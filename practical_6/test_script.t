#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 5;

require './script.pl';

is(find_student_number(["1234567, Alice Jane Brown", "7654321, Bob Joe Smith"], 3),
   "None found", 'No matching students');

is(find_student_number(["1000001, Mike Tyson", "1000002, Sarah Jane Connors"], 1),
   "1000001", 'Exactly one match');

is(find_student_number([
    "2000001, Alice Mary Zebra",
    "2000002, Charlie Joe Anderson",
    "2000003, Ben Thomas Zachary"
], 2), "2000002", 'Multiple matches with sorting');

is(find_student_number([], 1), "None found", 'Empty file');

is(find_student_number([
    "3000001,    Emily     Rose   Watson",
    "3000002,     John   Doe"
], 1), "3000002", 'Extra spaces handled');

