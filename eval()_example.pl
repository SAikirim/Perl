#!/usr/bin/perl -w
use strict;
use warnings;

#
# eval �Լ� ��� ����
# �߰��� �ٿ�Ǵ� �ڵ带 ��ŵ�Ͽ� �ٿ�ǰ� ���� �ʴ´�.
# �ٿ� ������ 'local $@' ������ �����Ѵ�.
# eval�� ������ 'print "sadffdsadfdafs"'�� ����� �ȵ�
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

