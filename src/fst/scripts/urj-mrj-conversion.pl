#!/usr/bin/perl -w
#
# urj-mrj-conversion.pl
# Convert names in the URJ propernoun lexicon to mrj.

use strict;
use utf8;
use feature 'unicode_strings';
BEGIN {
       $| = 1;
       binmode(STDIN, ':encoding(UTF-8)');
       binmode(STDOUT, ':encoding(UTF-8)');
}
use open qw( :encoding(UTF-8) :std );

while(<>) {
	# Continuation lexicon substitutions:
#	s/ C-FI-NEN/nen LONDON/g ;
	s/ PROP-PLC_KEL1/ N_01/g ;
	s/ PROP-PLC_VELE/ N_01/g ;
	s/ PROP_VELE/ N_01/g ;
	s/ PROP_KAL/ N_01/g ;
	s/ PROP_KAL_PLC/ N_01/g ;
	s/ PROP_KUDO/ N_01/g ;
	s/ PROP_KUDO_PLC/ N_01/g ;
	s/ PROP_OSH/ N_01/g ;
	s/ PROP_OSH_PLC/ N_01/g ;

	
# loanwords with compound border over identical vowels
	s/Hjarteelva/Hjarte-elva/g ;
	

# names with Inari Saami inflection
	s/^Aanaar\+/!Aanaar+/g ;

# sme special symbols
	s/b9/b/g ;

	my $line = $_;

	print $line;
}

