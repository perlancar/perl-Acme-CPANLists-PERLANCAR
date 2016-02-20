package Acme::CPANLists::PERLANCAR::Retired;

# DATE
# VERSION

our @Module_Lists = (
    # list: Retired modules
    {
        summary => 'Retired modules',
        description => <<'_',

This is a list of some of the modules which I wrote but have now been retired,
for various reasons but mostly because they are no longer necessary. I've
purged/retired more modules than these (mostly failed experiments) but they are
not worth mentioning here because nobody else seems to have used them.

Note that you can always get these retired modules from BackPAN or GitHub (I
don't purge most of the repos) if needed.

_
        entries => [
            {
                module => 'Data::Schema',
                description => <<'_',

Superseded by `Data::Sah` since 2012.

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

Abandoned this fork of `Passwd::Unix` due to a couple of fundamental issues and
superseded by `Unix::Passwd::File` which is a clean-slate attempt.

_
                alternate_modules => ['Unix::Passwd::File'],
            },
        ],
    },
);

1;
# ABSTRACT:
