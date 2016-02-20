package Acme::CPANLists::PERLANCAR::Avoided;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => "Modules I'm currently avoiding",
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
);

1;
# ABSTRACT:
