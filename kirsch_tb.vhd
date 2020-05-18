-------------------------------------------------------------------------------
-- kirsch_tb.vhd
-- test bench
-- This testbench reads a txt file and stores the values into a mem[m n]
-- array.  It then passes the data to the main code.
-- Afterward it receives the results and stores them in a .ted file,
-- which contains one line for each pixel:
--  <edge> <dir> <row> <col>
--  
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library std;
use std.textio.all;

use work.kirsch_synth_pkg.all;
use work.file_pkg.all;
use work.kirsch_unsynth_pkg.all;

entity kirsch_tb is
  generic (
    test_num      : natural := 1;
    result_suffix : string  := "sim";
    bubbles       : natural := 3;
    period        : real    := 10.0
  );
end kirsch_tb;

architecture main of kirsch_tb is

  --------------------------------------------------------------
  -- names of test file, edge file, and direction file

  constant test_str     : string := integer'image(test_num);
  constant image_name   : string := "tests/test"& test_str &".txt";
  constant result_name  : string := "tests/res"& test_str &"_"& result_suffix;
  constant latency_file : string := "LOG/latency.asn";
  constant doa_file     : string := "doa_test.txt";

  --------------------------------------------------------------
  -- clock cycle

  constant clk_period   : time       := period * 1 ns;
  constant hold_time    : time       := 0.1 * clk_period;
  
  --------------------------------------------------------------
  -- upper and lower bounds on indices for images
  
  constant row_min      : natural    := image_ty'low(1);
  constant row_max      : natural    := image_ty'high(1);
  
  constant col_min      : natural    := image_ty'low(2);
  constant col_max      : natural    := image_ty'high(2);
  
  --------------------------------------------------------------
  -- signals to interface to edge detector
  
  signal clk          : std_logic;
  signal reset          : std_logic;
  
  signal i_valid      : std_logic;
  signal i_pixel      : unsigned( 7 downto 0 );
  
  signal o_mode       : mode_ty;
  signal o_row        : unsigned(7 downto 0); 
  signal o_col        : unsigned(7 downto 0); 
  signal o_valid      : std_logic;
  signal o_edge       : std_logic;
  signal o_dir        : direction_ty;

  --------------------------------------------------------------
  -- 2-d arrays for images
  
  signal image,                          -- initial image
         edge_image,                     -- image of edges
         dir_image      : image_ty;      -- image of directions
  
  -----------------------------------------------------------------
  -- for dead or alive test
  
  constant num_doa_pixels       : natural := 2*(row_max - row_min + 1);

  constant TEST_PASSED   : string :=
    "SUMMARY: basic DOA functionality test PASS";
  
  constant TEST_FAILED   : string :=
    "SUMMARY: basic DOA functionality test FAIL";

  signal done_sending : boolean;
  
  -----------------------------------------------------------------
  -- write dead-or-alive test result to a file

  procedure write_doa_result ( filename : in string; test_result: in string) is
    file wr_file       : text open write_mode is filename;
    variable textline  : line;
  begin
    write( textline, test_result );
    writeline(wr_file, textline);
  end procedure;
                       
  --------------------------------------------------------------
  
begin

    ----------------------------------------------------
    -- edge detector circuit

    uut: entity work.kirsch port map
      (clk           => clk,
       reset         => reset,
       i_valid       => i_valid,
       i_pixel       => i_pixel,
       o_valid       => o_valid,
       o_edge        => o_edge,
       o_dir         => o_dir,
       o_mode        => o_mode,
       o_row         => o_row,
       o_col         => o_col
      );

    ----------------------------------------------------
    -- clock

    process
    begin
      -- initial half clock period of '0' so that rising edges are on
      -- multiples of 10ns
      clk <= '0';
      wait for clk_period/2;
      loop
        wait for clk_period/2;
        clk <= not clk;
      end loop;
    end process;

    ----------------------------------------------------
    -- reset

    process
    begin
      reset <= '1';
      for i in 1 to 5 loop
        wait until rising_edge(clk);
      end loop;
      wait for hold_time;
      reset <= '0';
      wait;
    end process;
    
    ----------------------------------------------------
    -- read image data from file, then send to circuit

    process
    begin
      done_sending <= false;
      i_valid      <= '0';
      image        <= read_image( image_name );
      report("XXXXXXXXXXXX reading image from "& image_name);
      wait until rising_edge(clk);
      wait until reset = '0';
      wait until rising_edge(clk);
      wait for hold_time;
      for row_idx in row_min to row_max loop
        for col_idx in col_min to col_max loop
          wait for bubbles * clk_period;
          i_valid <= '1';
          i_pixel <= image(row_idx, col_idx);
          wait for clk_period;
          i_pixel <= (others => '0');
          i_valid <= '0';
        end loop;
        done_sending <= row_idx > 3;
      end loop;
      report("XXXXXXXXXXXX sent image");
      wait;
    end process;

    ----------------------------------------------------
    -- Receive the output data from circuit.
    -- Store edge data in edge_image and direction data in dir_image.
    -- After done reading image, write edges and directions to files.

    process
      file edge_dir_file : text;
    begin
      --------------------------------------------
      -- delay opening of file so that sim script has opportunity
      -- to overwrite result_name
      --
      wait until rising_edge(clk);
      file_open (edge_dir_file, result_name &".ted" , write_mode );
      --------------------------------------------
      for row_idx in row_min+1 to row_max-1 loop
        for col_idx in col_min+1 to col_max-1 loop
          wait until rising_edge(clk) and o_valid = '1';
          write_edge_dir( edge_dir_file,
                          o_edge, o_dir, row_idx, col_idx );
        end loop;
      end loop;
      report("XXXXXXXXXXXX got image");
      wait;
    end process;

    ----------------------------------------------------
    -- count latency after done sending pixels

    process
      variable latency : natural := 0;
    begin
      ------------------------------------------
      wait until reset = '1';
      wait until reset = '0';
      for pix_count in 1 to (row_max - row_min + 1) * 2 + 3 loop
        wait until i_valid = '1';
      end loop;
      ------------------------------------------
      latency := 0;
      report "latency begin wait";
      while o_valid /= '1' loop
        wait until rising_edge(clk);
        report "latency waiting";
        latency := latency + 1;
      end loop;
      report "latency = "& integer'image(latency-1);
      write_file( latency_file, "LATENCY = " & integer'image(latency-1) );
      wait;
    end process;

    ----------------------------------------------------
    -- doa test to check o_valid after done sending pixels

    process begin
      ------------------------------------------
      wait until reset = '1';
      wait until reset = '0';
      wait until done_sending or o_valid = '1';
      ------------------------------------------
      if o_valid = '1' then
        write_doa_result( doa_file, TEST_PASSED);
      else 
        write_doa_result( doa_file, TEST_FAILED);
      end if;   
      wait;
    end process;

    ----------------------------------------------------------------------
    
end architecture;
