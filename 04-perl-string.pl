# strics and wanrnings to be used in the entire document:

use warnings;
use strict;

# 3.1 intro to perl strings

# strings, in theory, have infinite memory available

my $s = "this is a string, yahoo, so funny";



# 3.2 perl string alternative delimiters

my $s2 = q/"we are lerning perl string today" I can assure you./;

print($s2, "\n");

my $name = "agus";

my $s3 = qq/"Again, i can assure you that im learning perl" $name claimed ./;

print($s3, "\n");


## 3.3 perl string functions

# string's length
print(length($s3), "\n");

# 3.3.1 changing cases of string

print("To upper case:");
print(uc($s3), "\n");

print("To lower case:");
print(lc($s3), "\n");



# 3.3.2 search for a substring inside a string\

my $inThisText = "Learning perl is not that complicated\n";
my $searchThistext = "is";
my $index = index($inThisText, $searchThistext);

print(qq\ the position for "$searchThistext" in the string "$inThisText" is in "$index"\, "\n");



# 3.3.3 Get or modify substring inside a string

my $colorString = "Mi favorite color is red";
my $colorToExtract = substr($colorString, 21, 3); #string, start, place to move after start
my $pointerName = substr($colorString, 12, 5);

print($pointerName, ":", $colorToExtract,"\n");

# to replace:

substr($colorString, 21, 3, "green")