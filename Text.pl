#!/usr/bin/perl -w
use strict;
use warnings;


#system("dir") > ;
#my @in_filename ;
#print @in_filename;
#my @in_name = split(" ",@in_filename);
#
#print @in_name;

my $old_age = 0;
my $old_name;
while (<*>) {
    chomp;
    print "$_ is readable\n" if -r;
    print "$_ is writeable\n" if -w;
    print "$_ is executable\n" if -x;
    print "$_ does not exist\n" unless -e;
    my $age = -C $_;
    print "ctime: $age\n";
    if ($old_age < $age) {
        $old_name = $_;
        $old_age = $age;
    }
}
#my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat("README.md");
printf "\nold filename: %s\nold_age: %d", $old_name, $old_age;



__DATA__
red green  blue
red
blue
green
red
blue
blue