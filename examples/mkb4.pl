#!/usr/local/bin/perl -w

use strict;

my	($i, $j);
my	$yy = 729;
my	$xx = 1032;

print "~paper b4\n";
print "~landscape\n";

for ($i = 0; $i < $xx; $i += 20) {
	if ($i % 100 == 0) {
		$j = 3;
	} else {
		$j = 1;
	}
	printf "~line %d,%d,%d,%d,%d\n", $i, 0, 0, $yy, $j;
}

for ($i = 0; $i < $yy; $i += 20) {
	if ($i % 100 == 0) {
		$j = 3;
	} else {
		$j = 1;
	}
	printf "~line %d,%d,%d,%d,%d\n", 0, $i, $xx, 0, $j;
}

print "~formfeed\n"
