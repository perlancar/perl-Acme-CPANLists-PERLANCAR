package Acme::CPANLists::PERLANCAR::Unbless;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Unblessing a reference',
        description => <<'_',

Blessing a reference is easy with `bless()` but surprisingly (or
unsurprisingly?) unblessing a blessed reference is not as simple. Currently you
can use the `unbless()` function from <pm:Data::Structure::Util> or `damn()`
from <pm:Acme::Damn> (which is a slimmer module if you just need unblessing
feature). Both are XS modules. If you need a pure-Perl solution, currently
you're out of luck. <pm:Function::Fallback::CoreOrPP> provides `unbless()` where
the fallback option is shallow copying.

_
        entries => [
            {
                module => 'Data::Structure::Util',
            },
            {
                module => 'Acme::Damn',
            },
            {
                module => 'Function::Fallback::CoreOrPP',
            },
        ],
    },
);

1;
# ABSTRACT:
