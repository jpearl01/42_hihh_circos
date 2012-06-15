#!/usr/bin/perl

use strict;
use warnings;

my %names = qw(
seq0	Hh23221
seq1	Hh60P3H1
seq2	HhC2321
seq3	HhMO722
seq4	22121
seq5	22124
seq6	22421
seq7	26222
seq8	26223
seq9	26224
seq10	26324
seq11	26328
seq12	26423
seq13	26428
seq14	3655
seq15	6P18H1
seq16	7P49H1
seq17	AA
seq18	BB
seq19	CC
seq20	CZ412602
seq21	DD
seq22	EE
seq23	GG
seq24	HH
seq25	II
seq26	JJ
seq27	NML20
seq28	R1838
seq29	R3021
seq30	R393
seq31	UC16
seq32	M19107
seq33	M19501
seq34	M21127
seq35	M21621
seq36	M21639
seq37	86028NP
seq38	B10810
seq39	R2846
seq40	R2866
seq41	RdKW20 );

open I, "links_gt2500bp_one_tweener", or die "Can't open the links file:$!\n";
my @l = <I>;
open O, '>', "links_gt2500bp_one_tweener.txt", or die "Can't open the conf file for output: $!\n";

for my $link (@l){
    for my $k (keys %names){
	$link =~ s/ $k / $names{$k} /;
    }
    print O $link;
}
