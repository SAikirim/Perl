#!/usr/bin/perl -w

#
# �������� Dumper ���
# test2.inf ������ �о �Ʒ��� ���� section, key, value�� �ؽ÷� ������ Dumper�� ����ϵ��� �غ�����.
# $textRex�� $confRex�� ����
#
# https://github.com/SAikirim/Perl
# by SAiki
#

use strict;
use warnings;

use Data::Dumper;
use Encode;

my $file = 'test2.inf';
open(my $fh, '<', $file);
$/ = undef;
my $text = <$fh>;
close $fh;

my $textRex = qr/(^\[.+?\])[ \t]*(.+?)(?=^\[|\n$)/ms; # ����
#my $textRex = qr/\[([^\]]+)\]((?:(?!^\[).)+)/ms; # ����
my $confRex = qr/(.+?)[ \t]*=[ \t]*(.+)[\r]/m; # ����
#my $confRex = qr/^(.+?)[ \t]*\=[ \t]*([^\r\n]+)/m; # ����

my %secpol = ();
$text = encode('UTF-8', decode('UTF-16LE', $text));
while ( $text =~ /$textRex/g ) {
    my ($section, $conf) = ($1, $2);
    while ($conf =~ /$confRex/g ) {
        my ( $key, $value ) = ($1, $2);
        $secpol{$section}{$key} = $value;
    }
}

print Dumper(\%secpol);

=cut # ��� ����
$VAR1 = {
          'System Access' => {
                               'MinimumPasswordAge' => '0',
                               'LSAAnonymousNameLookup' => '0',
                               'PasswordComplexity' => '0',
                               'MaximumPasswordAge' => '42',
                               'RequireLogonToChangePassword' => '0',
                               'PasswordHistorySize' => '0',
                               'ForceLogoffWhenHourExpire' => '0',
                               'EnableGuestAccount' => '0',
                               'EnableAdminAccount' => '0',
                               'MinimumPasswordLength' => '0',
                               'NewAdministratorName' => '"Administrator"',
                               'LockoutBadCount' => '0',
                               'ClearTextPassword' => '0',
                               'NewGuestName' => '"Guest"'
                           ........
=cut