#!/usr/local/bin/perl -w

use strict;

my	($i, $j);

sub print_char {
	my	($i, $j) = @_;

	printf "0x%02x%02x = %c%c", $i, $j, $i, $j;
}

sub print_lo {
	my	($i, $from, $to) = @_;
	my	$k = 0;

	for (my $j = $from; $j <= $to; $j++) {
		if ($k++ % 5 == 0) {
			print "\n";
		} else {
			print "  ";
		}
		print_char ($i, $j);
	}
	print "\n";
}

sub print_hi {
	my	($from, $to, $ph, $pl) = @_;

	for (my $i = $from; $i <= $to; $i++) {
		print_lo ($i, 0x40, 0x7e) if ($ph);
		print_lo ($i, 0xa1, 0xfe) if ($pl);
	}
}

print "~fs 15\n";
print_hi (0xfa, 0xfe, 1, 1);
print_hi (0x8e, 0xa0, 1, 1);
