use warnings;
use strict;

# 7.1 Introduction to Perl hash

# A Perl hash is defined by key-value pairs

# A hash variable must begin with a percent sign ( %).
# The prefix % looks like key/value pair so remember 
# this trick to name the hash variables.

my %countries =  ( England => 'English',
	               France  => 'French' , 
    	           Spain   => 'Spanish', 
    	           China   => 'Chinese', 
	               Germany => 'German'  );

# Perl requires the keys of a hash to be strings, meanwhile, the values can be any scalars.

# 7.2 Perl hash operations

# 7.2.1 Look up Perl hash values

my $lang = $countries{'England'}; 
print($lang,"\n");# English



# 7.2.2 Add a new element

$countries{'Italy'} = 'Italian';



# 7.2.3 Remove a single key/value pair

delete $countries{'China'};



# 7.2.4 Modify hash elements

# add new key value pair
$langs{'India'} = 'Many languages';
# modify official language of India
$langs{'India'} = 'Hindi';



# 7.2.5 Loop over Perl hash elements

for(keys %countries){
	print("Official Language of $_ is $countries{$_}\n");
}