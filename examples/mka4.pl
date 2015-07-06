#!/usr/local/bin/perl -w

use strict;

my	($i, $j);
#my	$yy = 729;
my	$yy = 1024;
my	$xx = 1032;

print "~paper a4\n";
print "~landscape=0\n";

for ($i = 0; $i < $xx; $i += 20) {
	if ($i % 100 == 0) {
		$j = 0.3;
	} else {
		$j = 0.1;
	}
	printf "~line %d,%d,%d,%d,%0.2f\n", $i, 0, 0, $yy, $j;
}

for ($i = 0; $i < $yy; $i += 20) {
	if ($i % 100 == 0) {
		$j = 0.3;
	} else {
		$j = 0.1;
	}
	printf "~line %d,%d,%d,%d,%0.2f\n", 0, $i, $xx, 0, $j;
}

print "~formfeed\n"
