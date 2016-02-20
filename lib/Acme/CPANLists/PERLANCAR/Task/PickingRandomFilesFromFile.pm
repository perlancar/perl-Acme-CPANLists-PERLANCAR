package Acme::CPANLists::PERLANCAR::Task::PickingRandomLinesFromFile;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Picking random lines from a file',
        tags => ['task'],
        entries => [
            {
                module=>'File::Random',
                description => <<'_',

The `random_line()` function from this module picks one or more random lines
from a specified file. The whole content of the file need not be slurped into
memory, but the routine requires a single-pass of reading all lines from the
file. The algorithm is as described in perlfaq (See: `perldoc -q "random
line"`).

If you pick more than one lines, then there might be duplicates.

_
            },
            {
                module=>'File::RandomLine',
                summary => 'Recommended for large files',
                description => <<'_',

This module gives you a choice of two algorithms. The first is similar to
`File::Random`, giving each line of the file equal weight. The second algorithm
is more interesting: lines are weighted by the number of characters in the
previous line, due to the nature of the algorithm. The second algorithm works by
random seeking the file, discard the line fragment, read the next line, then
repeat the process until the desired number of lines is reached. This means one
doesn't have to read the whole file. It might be preferred for very large files.

_
            },
            {
                module => 'File::Random::Pick',
                description => <<'_',

This module is an alternative to `File::Random`. It offers a `random_line()`
routine that avoids duplication.

_
            },
            {
                module => 'App::PickRandomLines',
                description => <<'_',

A CLI that allows you to use `File::Random::Pick` or `File::RandomLine` on the
command-line.

_
            },
        ],
    },
);

1;
# ABSTRACT:
