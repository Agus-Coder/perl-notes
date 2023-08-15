# 8.1

# Simple Perl if statement

my $a = 1;
print("Welcome to Perl if tutorial\n") if($a == 1);

    # Both number 0 and string “0” are false.
    # The undefined value is false.
    # The empty list () is false.
    # The empty string "" is false.
    # Everything else is true.

if($a == 1){
   print("Welcome to the Perl if tutorial!\n");
   print("another form of the Perl if statement\n");
   print("\n");
}

# 8.2 Perl if else statement


my $b = 2;
if($a == $b){
 print("a and b are equal\n");
}else{
 print("a and b are not equal\n");
}


if($a == $b){
   print("a and b are equal\n");
}elsif($a > $b){
   print("a is greater than b\n");
}else{
   print("a is less than b\n");
}

my %rates = (	
     USD => 1,
     YPY => 82.25,
     EUR => 0.78,
     GBP => 0.62,
     CNY => 6.23
);

# print supported currencies
print("Supported currency:\n");
for(keys %rates){
	print(uc($_),"\n");
}

# get inputs from users:
print("Enter local currency:\n");
$l_curr = <STDIN>; # <STDIN> it is used so the user can input data

print("Enter foreign currency:\n");
$f_curr = <STDIN>;

print("Enter amount:\n");
$l_amount = <STDIN>;

chomp($l_curr,$f_curr,$l_amount); # Removes the final /n 


# check user's inputs.
if(not exists $rates{$l_curr}){
     print("Local currency is not supported\n");
}
elsif(not exists $rates{$f_curr}){
     print("Foreign currency is not supported\n");
}
else{
     # convert from local currency to foreign currency
     $f_amount = ($rates{$f_curr} / $rates{$l_curr}) * $l_amount;

     # print out the result
     print("$l_amount $l_curr = $f_amount $f_curr","\n");
}


# PERL UNLESS