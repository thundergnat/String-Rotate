NAME
====

[![Build Status](https://travis-ci.org/thundergnat/String-Rotate.svg?branch=master)](https://travis-ci.org/thundergnat/String-Rotate)

String::Rotate - Rotate, but for Strings directly instead of through Lists

SYNOPSIS
========

```perl6
use String::Rotate;

say 'Rakudo'.rotate; # akudoR

say 'Rakudo'.rotate(-1); # oRakud

say rotate 'Rakudo', 3; # udoRak
```

DESCRIPTION
===========

Rotate routine and method, but for Strings instead of Lists. Seems a little redundant at first glance, you could easily do `'Rakudo'.comb.list.rotate.join` for the same effect, but the purpose built routines are, at a minimum, twice as fast and may be tens or hundreds times faster for longer strings.

These routines take a String, return a String and only perform String operations. They run in near constant time no matter how long the string is. `.comb.list.rotate.join` is heavily influenced by the size of the string.

AUTHOR
======

thundergnat (Steve Schulze)

COPYRIGHT AND LICENSE
=====================

Copyright 2020 thundergnat

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

