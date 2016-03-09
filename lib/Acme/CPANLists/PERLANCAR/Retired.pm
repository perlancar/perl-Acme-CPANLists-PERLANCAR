package Acme::CPANLists::PERLANCAR::Retired;

# DATE
# VERSION

our @Module_Lists = (
    # list: Retired modules
    {
        summary => 'Retired modules',
        description => <<'_',

This is a list of some of the modules which I wrote but have now been retired
and purged from CPAN, for various reasons but mostly because they are no longer
necessary. I've purged/retired more modules than these (mostly failed
experiments) but they are not worth mentioning here because nobody else seems to
have used them.

Note that you can always get these retired modules from BackPAN or GitHub (I
don't purge most of the repos) if needed.

_
        entries => [
            {
                module => 'Data::Schema',
                description => <<'_',

I wrote `Data::Sah` which superseded this module since 2012.

_
                alternate_modules => ['Data::Sah'],
            },
            {
                module => 'Carp::Always::Dump',
                description => <<'_',

Superseded by `Devel::Confess`, which can do color (`Carp::Always::Color`),
dumps (`Carp::Always::Dump`), as well as a few other tricks, all in a single
package.

_
                alternate_modules => ['Devel::Confess'],
            },
            {
                module => 'Passwd::Unix::Alt',
                description => <<'_',

I first wrote `Passwd::Unix::Alt` (a fork of `Passwd::Unix`) to support shadow
passwd/group files, but later abandoned this fork due to a couple of fundamental
issues and later wrote a clean-slate attempt `Unix::Passwd::File`.

_
                alternate_modules => ['Unix::Passwd::File'],
            },
        ],
    },
);

1;
# ABSTRACT:
