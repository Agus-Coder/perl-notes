use warnings;
use strict;

# By definition, an array is a variable that provides dynamic storage for a list.
# Note an important difference: a list is immutable whereas an array is mutable

# 6.1 Introduction to Perl array

# A $calar variable begins with the dollar sign ( $), however
# an @rray variable begins with an at-sign ( @).

my @days = qw(Mon Tue Wed Thu Fri Sat Sun);
print("@days" ,"\n");



# 6.2 Accessing Perl array elements

my @days = qw(Mon Tue Wed Thu Fri Sat Sun);
print($days[0]); # Beware! A $ symbol! This is because we are accesing an scalar

print("\n");

my @weekend = @days[-2..-1]; # SatSun

print("@weekend");
print("\n");



# 6.3 Counting Perl array elements

# you need to use the following:
my $count = scalar @days;
print($count, "\n");  #7

# The operator $# returns the highest index of an array. See the following example:
my $last = $#days;
print($last, "\n"); #" 6



# 6.4 Modifying Perl array elements
# you access the element using the index and assign it a new value

# single modification
$days[0] = 'Monday';

# full modification

@days[1..6] = qw(Tuesday Wednesday Thursday Friday Saturday Sunday);



# 6.5 Perl array operations

# 6.5.1 Perl array as a stack with push() and pop() functions
# Treat as a stack, LIFO

my @stack = (); # empty array

push(@stack,1); # push 1 (or any value) to array
push(@stack,2);
push(@stack,3);

my $elem = pop(@stack);

print($elem, "\n"); # 3

print(@stack); # 12



# 6.5.2 Perl array as a queue with unshift() and pop() functions
# Queue, based on the first in first out (FIFO)

my @queue = (); # empty queue

unshift(@queue,1); 
unshift(@queue,2);
unshift(@queue,3); # 3 will be added to the 0 position

print(@queue) # 3 2 1

my $elem = pop(@queue); # the last position wil be deleted
print("element: $elem\n"); # 1

print(@queue, "\n"); # 3 2



# 6.5.3 Sorting Perl arrays
# the sort() function allows you to sort an array in alphabetical or numerical order

my @fruits = qw(oranges apples mango cucumber);
my @sorted = sort @fruits;

print("@sorted","\n");


# The sort() function also accepts a block of code that allows you to change the sort algorithm

my @a = qw(3 2 1 4 7 6); 
print("unsorted: ", "@a","\n"); # unsorted: 3 2 1 4 7 6
@a = sort {$a <=> $b} @a; 
print("sorted:","@a","\n"); # sorted:1 2 3 4 6 7