use strict;
use warnings;

use Test::More;
use SVG::ChristmasTree;

ok(my $tree = SVG::ChristmasTree->new, 'Got an object');
isa_ok($tree, 'SVG::ChristmasTree');
is($tree->width, 1_000, 'Width is correct');
is($tree->height, 1_000, 'Height is correct');
isa_ok($tree->svg, 'SVG', 'SVG attribute');
can_ok($tree, 'as_xml');

$tree->pot;

done_testing;