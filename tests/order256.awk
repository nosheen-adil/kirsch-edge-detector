#
#  Program to merge 256 lines into one
#
BEGIN { count=0 }

{
printf ("%s  ", $1);
count++;
if (count == 256) count=0;
if (count == 0) printf ("\n");

#printf ("%s:%s:%s:%s:%s\n", $3, $1, $2, $4, $5);
}
