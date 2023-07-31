use warnings;
use strict;

# A list is immutable so you cannot change it directly. 
# In order to change a list, you need to store it in an array variable.

# 5.1 Simple Perl list

print(()); # display nothing
print("\n");
print(10,20,30); # display 102030
print("\n");
print("this", "is", "a","list"); # display: thisisalist
print("\n");


# 5.2 Complex Perl list

my $x = 10;
my $s = "a string";
print("complex list", $x , $s ,"\n");



# 5.3 Using qw function

# qw() function allows you to get a list by extracting words 
# out of a string using the space as a delimiter. 
# The qw stands for quote word

print(qw(red green blue)); # redgreenblue
print("\n");



# 5.4 Flattening list
# lists inside list automatically become one bigger list



# 5.5 Accessing list element
# Pretty similar to JS

print(
     (1,2,3)[2] # 3 third element
);
print "\n"; # new line

(1,2,3,4,5)[0,2,3] # (1,3,4)



# 5.6 Ranges
# to create a range:

(1..100);