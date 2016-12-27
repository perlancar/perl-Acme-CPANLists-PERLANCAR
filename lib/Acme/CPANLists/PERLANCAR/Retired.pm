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

I wrote <pm:Data::Sah> which superseded this module since 2012.

_
                alternate_modules => ['Data::Sah'],
            },
            {
                module => 'Carp::Always::Dump',
                description => <<'_',

This module is like <pm:Carp::Always>, but dumps complex arguments instead of
just printing `ARRAY(0x22f8160)` or something like that.

Superseded by <pm:Devel::Confess>, which can do color
(<pm:Carp::Always::Color>), dumps (<pm:Carp::Always::Dump>), as well as a few
other tricks, all in a single package.

_
                alternate_modules => ['Devel::Confess'],
            },
            {
                module => 'Passwd::Unix::Alt',
                description => <<'_',

I first wrote <pm:Passwd::Unix::Alt> (a fork of <pm:Passwd::Unix>) to support
shadow passwd/group files, but later abandoned this fork due to a couple of
fundamental issues and later wrote a clean-slate attempt
<pm:Unix::Passwd::File>.

_
                alternate_modules => ['Unix::Passwd::File'],
            },
            {
                module => 'Module::List::WithPath',
                description => <<'_',

Superseded by <pm:PERLANCAR::Module::List>.

_
                alternate_modules => ['PERLANCAR::Module::List'],
            },
        ],
    },
);

1;
# ABSTRACT:
