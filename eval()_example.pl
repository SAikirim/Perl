#!/usr/bin/perl -w
use strict;
use warnings;

#
# eval 함수 사용 예시
# 중간에 다운되는 코드를 스킵하여 다운되게 하지 않는다.
# 다운 오류는 'local $@' 변수에 저장한다.
# eval이 없으면 'print "sadffdsadfdafs"'이 출력이 안됨
#

local $@;
eval{
my %Nconf = ();
my @real_conf = ();
my $http_cnt = 0;
my $line_cnt = 0;
$Nconf{HOME}{HTTP}[ $http_cnt - 1 ]{SERVER} .= $real_conf[$line_cnt] . "\n";
};
print "sadffdsadfdafs";

