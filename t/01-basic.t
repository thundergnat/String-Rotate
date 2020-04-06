use v6.c;
use Test;
use String::Rotate;

plan 136;

my $str = 'Supercalifragilisticexpialidocious';

for ^$str.chars {
   is($str.rotate($_), $str.comb.list.rotate($_).join, "method rotate $_ ok");
   is($str.rotate(-$_), $str.comb.list.rotate(-$_).join, "method rotate -$_ ok");
   is(rotate($str, $_), $str.comb.list.rotate($_).join, "sub rotate $_ ok");
   is(rotate($str, -$_), $str.comb.list.rotate(-$_).join, "sub rotate -$_ ok");
}

done-testing;
