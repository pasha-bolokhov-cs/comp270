#!/usr/bin/env perl

open(F, 'test.txt');
while (<F>) {
    s/bear/hare/g;
    tr/abw/ABW/;
    print "$_";
}
close(F);

