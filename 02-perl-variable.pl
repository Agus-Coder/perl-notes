# 2 - Variables

# fundamentally, perl works with three types of variables
# scalars, lists and hashes

# Scalars ---> Numbers and strings

# 2.1 Naming Variables

# Valid Names

$gate = 10;

# Invalind variable names

$_port = 3000;                       # no letter found after dollar sign ($)
$4whatever = 20;                     # or underscore
$email-address = "example@mail.com"; # no sir! Not allowed - character
$gome url = 'some http address';     # Same here, using spaces is not allowed



# 2.2 Declaring Variables
# it is not necessary to declare a variable before using it

$a = 10;
$b = 23;
$c = $a * $b;

print $c;

# Sometimes, we could make mistakes like the following:

$color = "red";

print = "My foavorite color is " + $colour + ". And yours?";

# which, will do nothing, because we are using two different variables
# for us to avoid such errors, we can use the strict mode:

#!/usr/bin/perl

use strict;

my $color = 'red';

print = "My foavorite color is " + $colour + ". And yours?";

# 'my' is used for declaring a local scope variable



# 2.3 Perl variable scopes
# similar to other languages, it works as it follows:

use warnings;

$color1 = 'red';

print('my first favorite color is ' . $color1);

# in other block
{
    my $color1 = 'blue';
    print(" My 2d favorite color is: " . $color1);

}

# then, we can check it

print('my first favorite color is ' . $color1);


