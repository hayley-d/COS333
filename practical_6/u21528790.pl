#!/usr/bin/perl
use strict;
use warnings;

# Check for exactly 2 command-line arguments
if (@ARGV != 2) {
    print "Usage: perl script.pl input.txt 2\n";
    exit 1;
}

my ($filename, $required_count) = @ARGV;

# Open the input file for reading
open(my $fh, '<', $filename) or die "Cannot open $filename: $!";

my @matches;

while (my $line = <$fh>) {
    chomp $line;
    next if $line =~ /^\s*$/;  # Skip empty lines

    # Extract student number and name with a regular expression
    if ($line =~ /^(\d+),\s+(.+)$/) {
        my $student_number = $1;
        my $fullname = $2;

        my @names = split(/\s+/, $fullname);  # Split full name into words
        next if @names < 2;

        my $last_name = $names[-1];
        my $count = @names - 1;

        if ($count == $required_count) {
            push @matches, [$last_name, $student_number];
        }
    }
}

close $fh;

if (!@matches) {
    print "None found\n";
} elsif (@matches == 1) {
    print "$matches[0][1]\n";
} else {
    @matches = sort { $a->[0] cmp $b->[0] } @matches;
    print "$matches[0][1]\n";
}

