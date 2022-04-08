#!/usr/bin/perl -w
use strict;

my $a = {name => 't', age => 14};

print $a -> {name};
print $$a{age};