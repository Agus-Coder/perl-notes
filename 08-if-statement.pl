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

