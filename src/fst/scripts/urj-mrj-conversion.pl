#!/usr/bin/perl -w
#
# urj-Cyrl-mrj-conversion.pl
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
	s/ PROP-PLC_KEL1/ PROP_/g ;
	s/ PROP-PLC_VELE/ PROP_/g ;
	s/ PROP_KAL_PLC/ PROP_/g ;
	s/ PROP_KUDO_PLC/ PROP_/g ;
	s/ PROP_OSH_PLC/ PROP_/g ;
	s/ PROP_KAL_FEM/ PROP_/g ;
	s/ PROP_VELE_FEM/ PROP_KUDO_FEM/g ;
	s/ PROP_VELE_MAL/ N_KUDO_MAL/g ;
	s/ PROP_KAL / PROP_ /g ;
	s/ PROP_VELE / PROP_ /g ;
	s/ PROP_KUDO / PROP_ /g ;
	s/ PROP_OSH / PROP_ /g ;
	s/ PROP_KENKSH / PROP_ /g ;

# names with in Russian ия: Абхазия
        s/^([^+:]*и)я(\+N\+Prop\+Sem\/Plc:)\1я\ PROP_RUS_JA/$1$2$1\ N_AEZAE/g ;
	
# loanwords with compound border over identical vowels
	s/Hjarteelva/Hjarte-elva/g ;
	

# names with Inari Saami inflection
	s/^Aanaar\+/!Aanaar+/g ;

# sme special symbols
	s/b9/b/g ;

	my $line = $_;

	print $line;
}

