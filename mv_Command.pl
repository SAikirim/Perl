#!/usr/bin/perl -w
use strict;
use warnings;

#
# mv ��ɾ�
# mv ó�� ���, �ɼ� ����, �μ� 2���� ���� 
# 2��° �μ��� ���͸��� �� ���͸� �ؿ� ���� ����
#

my ($old_name, $new_name) = @ARGV;
if ( !defined ($old_name && $new_name)  ) {
    print "�μ��� �־��ּ���";
    exit;
}
$old_name =~ s/\\/\//g ;
$new_name =~ s/\\/\//g ;

if (-e $old_name) {
    if ( -d $new_name ) {
        $old_name =~ /[^\/\n\t]+$/ ;
        $new_name .= "/$&";
    }
    
    rename ( $old_name, $new_name ) || die "rename failed :$!\n";
}
else {      
    print "NO Fire or Diretory : $!";
    exit;
}