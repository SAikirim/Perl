#!/usr/bin/perl -w

#
# 정상적인 Dumper 출력
# test2.inf 파일을 읽어서 아래와 같이 section, key, value를 해시로 정리해 Dumper로 출력하도록 해보세요.
# $textRex와 $confRex만 수정
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

my $textRex = qr/(^\[.+?\])[ \t]*(.+?)(?=^\[|\n$)/ms; # 수정
#my $textRex = qr/\[([^\]]+)\]((?:(?!^\[).)+)/ms; # 도현
my $confRex = qr/(.+?)[ \t]*=[ \t]*(.+)[\r]/m; # 수정
#my $confRex = qr/^(.+?)[ \t]*\=[ \t]*([^\r\n]+)/m; # 도현

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

=cut # 출력 예시
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