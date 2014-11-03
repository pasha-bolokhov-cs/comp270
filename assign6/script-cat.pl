#!/usr/bin/env perl

open(F, '/home/bolokhov/comp270/assign6/test.txt');
while (<F>) {
    s/bear/hare/g;
    tr/abw/ABW/;
    print "$_";
}
close(F);

