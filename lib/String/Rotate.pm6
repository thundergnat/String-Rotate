use v6.c;
unit module String::Rotate:ver<0.0.1>;

role Rotate {
    multi method rotate (Str:D: Int \ch = 1 --> Str) {
        my \shft = abs(ch % self.chars);
        self.substr(shft) ~ self.substr(0, shft)
    }
}

sub rotate (Str:D \str, Int \ch = 1 --> Str) is export {
    my \shft = abs(ch % str.chars);
    str.substr(shft) ~ str.substr(0, shft)
}

use MONKEY-TYPING;

augment class Str does Rotate { }


=begin pod

=head1 NAME

[![Build Status](https://travis-ci.org/thundergnat/String-Rotate.svg?branch=master)](https://travis-ci.org/thundergnat/String-Rotate)

String::Rotate - Rotate, but for Strings directly instead of through Lists

=head1 SYNOPSIS

=begin code :lang<perl6>

use String::Rotate;

say 'Rakudo'.rotate; # akudoR

say 'Rakudo'.rotate(-1); # oRakud

say rotate 'Rakudo', 3; # udoRak

=end code

=head1 DESCRIPTION

Rotate routine and method, but for Strings instead of Lists. Seems a little
redundant at first glance, you could easily do C<'Rakudo'.comb.list.rotate.join>
for the same effect, but the purpose built routines are, at a minimum, twice as
fast and may be tens or hundreds times faster for longer strings.

These routines take a String, return a String and only perform String
operations. They run in near constant time no matter how long the string is.
C<.comb.list.rotate.join> is heavily influenced by the size of the string.

=head1 AUTHOR

thundergnat (Steve Schulze)

=head1 COPYRIGHT AND LICENSE

Copyright 2020 thundergnat

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
