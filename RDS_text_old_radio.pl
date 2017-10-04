#!/usr/bin/perl
#	Name: 		RDS_text_old_radio.pl
#
#	Function:	Use this to report RP (Radio Program) and RS (Radio Source) 
#			as RT for old RDS FM-devices which don't have RS but only 8
#			characters of RP-info.
#
#	Usage:		$ mpc current | perl RDS_text_old_radio.pl
#
#	Author:		Kjell Arne Rekaa
#
use warnings;
binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

while (1) {
    my $r = `mpc current`;
    ## print "r=$r\n";

    for ($i=0; $i < length($r); $i += 8) {
       print "RP ", substr($r, $i , 8), "\n";
       sleep 1;
    }
    sleep 1;

}
