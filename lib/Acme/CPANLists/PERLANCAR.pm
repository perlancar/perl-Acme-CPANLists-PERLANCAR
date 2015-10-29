package Acme::CPANLists::PERLANCAR;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Test list',
        entries => [
            {module=>'Foo::Bar', summary=>'bar'},
            {module=>'Foo::Baz', summary=>'baz'},
        ],
    },

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
                rating => 10,
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

    {
        summary => "Modules I'm avoiding",
        description => <<'_',

This is a list of modules I'm currently avoiding to use in my code, for some
reason.

_
        entries => [
            {
                module => 'Log::Any',
                summary => 'Startup overhead',
                description => <<'_',

Since I write a lot of CLI scripts, many of which has self-tab-completion
features (using `Perinci::CmdLine` framework), I prefer to use modules that have
startup overhead that is as low as possible. Since 1.0+ release, `Log::Any`'s
startup overhead increases significantly from < 1ms to about 10ms (this is by
itself not a significant number but things add up for other modules and I'm
trying to keep startup overhead under 25-50ms). The alternate module I'm using
now `Log::Any::IfLOG` is a simple wrapper that avoids loading `Log::Any` unless
some environment variable indicates that user wants logging.

_
                alternate_modules => ['Log::Any::IfLOG'],
            },
            {
                module => 'File::Flock',
                summary => 'Too many deps',
                description => <<'_',

I used to use `File::Flock` due to its simple interface. However, this module
depends on things like `AnyEvent`, `Data::Structure::Util`, `File::Slurp`, et
al, all of which seem unnecessary. Nowadays I'm opting to use
File::Flock::Retry, or just plain `flock()`.

_
                alternate_modules => ['File::Flock::Retry'],
            },
            {
                module => 'File::Slurp',
                summary => 'Buggy',
                alternate_modules => ['File::Slurper'],
            },
        ],
    },

    {
        summary => 'Ensuring only a single instance of program is running',
        description => <<'_',

There are a few common techniques to establish this: creating a PID file, and/or
flock-ing a file (either the program's source code, or said PID file, or some
other lock file). Note that when your script runs, the standard `DATA`
filehandle is already open to the program's source code, so you can just use
that for locking.

Keywords: single process, prevent multiple instances, prevent multiple
processes.

_
        entries => [
            {module=>'Proc::PID::File', rating=>8},
            {module=>'Proc::Pidfile', rating=>5},
            {module=>'Proc::Govern', summary => 'Uses Proc::PID::File'},
            {module=>'IPC::Lockfile', summary => 'Works by locking $0.lock'},
            {module=>'Sys::RunAlone', summary => 'Works by locking DATA handle'},
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


=head1 SEE ALSO

L<Acme::CPANLists>
