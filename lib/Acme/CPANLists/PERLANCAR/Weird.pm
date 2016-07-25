package Acme::CPANLists::PERLANCAR::Weird;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Weird modules',
        description => <<'_',

List of modules I find weird (non-pejoratively speaking) in one way or another,
e.g. peculiar API, name.

_
        entries => [
            {
                module => 'String::Tools',
                description => <<'_',

Function names chosen are too similar with perl's builtins and will be prone to
typos: `subst` (`substr`), `define` (`defined`). I don't think `stitch` is more
intuitive to me compared to `join()`.

_
            },
        ],
    },
);

1;
# ABSTRACT:
