#!/usr/bin/perl -w
use strict;
use warnings;

#
# mv 명령어
# mv 처럼 사용, 옵션 없음, 인수 2개를 받음 
# 2번째 인수가 디렉터리면 그 디렉터리 밑에 파일 생성
#

my ($old_name, $new_name) = @ARGV;
if ( !defined ($old_name && $new_name)  ) {
    print "인수를 넣어주세요";
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