package Acme::CPANLists::PERLANCAR;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Random module reviews',
        entries => [
            {
                module => 'App::cpanoutdated::coro',
                description => <<'_',

66% faster than pm:App::cpanoutdated when run against a normal CPAN mirror (no
speed improvement if you run it against a local CPAN mirror like MiniCPAN
though). Wouldn't mind faster version of stuffs :-)

_
                rating => 5,
            },
        ],
    },

    {
        summary => 'One-letter CPAN modules',
        description => <<'_',

Just a list of one-letter modules on CPAN.

_
        entries => [
            {module=>'B'},
            {module=>'L'},
            {module=>'P'},
            {module=>'U'},
            {module=>'V'},
        ],
    },
);

our @Author_Lists = (
    {
        summary => 'Test list',
        entries => [
            {author=>'BARBIE'},
            {author=>'NEILB'},
            {author=>'RJBS'},
        ],
    },

    {
        summary => 'Another test list',
        entries => [
            {author=>'BARBIE'},
            {author=>'MANWAR'},
            {author=>'SKIM'},
            {author=>'NEILB'},
            {author=>'KENTNL'},
            {author=>'ETHER'},
            {author=>'CSSON'},
            {author=>'INGY'},
            {author=>'IVANWILLS'},
            {author=>'RENEEB'},
        ],
    },
);

1;
# ABSTRACT: PERLANCAR's CPAN lists

=head1 DESCRIPTION

This distribution is an experiment for providing data that can be used by
L<https://cpanlists.org> (when I finally get around to finishing the project),
L<lcpan> (when I implement indexing of module source codes), as well as
L<http://cpanratings.perl.org> (as I'm currently having trouble logging in to
the site).
