package Acme::CPANLists::PERLANCAR;

# DATE
# VERSION

our @Module_Lists = (
    # list: One-letter CPAN modules
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

    # list: Modules I'm avoiding
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

After the 1.x version, I no longer prefer `Log::Any` and am developing an
alternative called `Log::Gurat`.

_
                alternate_modules => ['Log::Gurat'],
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
            {
                module => 'File::Slurp::Tiny',
                summary => 'Use the newer File::Slurper instead',
                alternate_modules => ['File::Slurper'],
            },
        ],
    },

    # list: Ensuring only a single instance of program is running
    {
        summary => 'Ensuring only a single instance of program is running',
        tags => ['task'],
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

    # list: Picking random lines from a file
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

    # list: Assertion
    {
        summary => 'Assertion',
        description => <<'_',

Assertion is a check statement that must evaluate to true or it will abort the
execution. It is useful during development/debugging:

    assert("there must be >3 arguments", sub { @args > 3 });

In production code, it can be removed entirely so it does not have any impact on
runtime performance.

In the old days, you only have this alternative to do it in Perl:

    assert(...) if DEBUG;

where `DEBUG` is a constant subroutine, declared using:

    use constant DEBUG => 0;

or:

    sub DEBUG() { 0 }

The perl compiler will optimize away and remove the code entirely when `DEBUG`
is false. But having to add `if DEBUG` to each assertion is annoying and
error-prone.

Nowadays, you have several alternatives to have a true, C-like assertions. One
technique is using `Devel::Declare` (e.g. `PerlX::Assert`). Another technique is
using `B::CallChecker` (e.g. `Assert::Conditional`).

_

        entries => [
            {module=>'Assert::Conditional'},
            {module=>'PerlX::Assert'},
            {module=>'Devel::Assert'},
            #{module=>'assertions'}, # this module doesn't work now, it uses an experimental feature available on 5.9.x which finally removed before 5.10.
        ],
    },
);

our @Author_Lists = (
);

1;
# ABSTRACT: PERLANCAR's CPAN lists

=head1 DESCRIPTION
