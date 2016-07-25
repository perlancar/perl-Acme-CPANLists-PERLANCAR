package Acme::CPANLists::PERLANCAR::LocalCPANMirror;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Creating a local CPAN mirror',
        description => <<'_',

Since CPAN repository is just a hierarchy of files, you can simply use a
recursive download/mirror tool over http/https/ftp. However, for additional
features you can take a look at the modules in this list.

_
        entries => [
            {
                module=>'CPAN::Mini',
                description => <<'_',

This module lets you create a so-called "mini mirror", which only contains the
newest release for each distribution (where CPAN might also contains previous
versions of a distribution as long as the CPAN author does not cleanup his
previous releases). This produces a significantly smaller CPAN mirror which you
can use on your PC/laptop for offline development use.

_
            },
            {
                module=>'App::lcpan',
                description => <<'_',

This application not only lets you download a CPAN mini mirror (using
`CPAN::Mini` actually) but also indexes the package list and distribution
metadata into a SQLite database so you can perform various queries, like list of
modules/distributions/scripts of a CPAN author, or related modules using
cross-mention information on modules' PODs, or various rankings.

_
            },
        ],
    },
);

1;
# ABSTRACT:

=head1 append:SEE ALSO

L<Acme::CPANLists::PERLANCAR::CustomCPAN>
