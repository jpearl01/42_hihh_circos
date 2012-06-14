#!/usr/bin/perl

use strict;
use warnings;

open I, "links_gt500bp.txt", or die "Can't open the links file:$!\n";
open O, ">", "links_gt500bp_updated.txt" or die "can't open the updated links file: $!\n";

while (<I>){
    my @a = split(/\s+/, $_);
    my $o = $a[0]." ".$a[1]." ".$a[2]." ".$a[3]." id=".$a[4]."\n";
    print O $o;
}
