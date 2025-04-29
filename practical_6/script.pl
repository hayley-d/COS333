#!/usr/bin/perl
use strict;
use warnings;

# Main function for logic, accepts lines and required count
sub find_student_number {
    my ($lines_ref, $required_count) = @_;
    my @lines = @$lines_ref;
    my @matches;

    foreach my $line (@lines) {
        $line =~ s/^\s+|\s+$//g;  # Trim
        next if $line eq "";

        if ($line =~ /^(\d+),\s+(.+)$/) {
            my $student_number = $1;
            my $fullname = $2;

            my @names = split(/\s+/, $fullname);
            next if @names < 2;

            my $last_name = $names[-1];
            my $count = scalar(@names) - 1;

            if ($count == $required_count) {
                push @matches, [$last_name, $student_number];
            }
        }
    }

    if (!@matches) {
        return "None found";
    } elsif (@matches == 1) {
        return $matches[0][1];
    } else {
        @matches = sort { $a->[0] cmp $b->[0] } @matches;
        return $matches[0][1];
    }
}

# CLI wrapper
unless (caller) {
    if (@ARGV != 2) {
        print "Usage: perl script.pl input.txt 2\n";
        exit 1;
    }

    my ($filename, $required_count) = @ARGV;

    open(my $fh, '<', $filename) or die "Cannot open $filename: $!";
    my @lines = <$fh>;
    close $fh;

    my $result = find_student_number(\@lines, $required_count);
    print "$result\n";
}

