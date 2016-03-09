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
            {
                module => 'Exporter::Lite',
                summary => 'Unnecessary, use Exporter instead',
                description => <<'_',

I used to use this module because I didn't know that `Exporter` can also be used
without subclassing, i.e. instead of:

    use Exporter;
    our @ISA = qw(Exporter);
    our @EXPORT = (...);

you can also use it like this:

    use Exporter qw(import);
    our @EXPORT = (...);

_
                alternate_modules => ['Exporter'],
            },
            {
                module => 'JSON',
                summary => 'Somewhat broken',
                description => <<'_',

JSON.pm is a discouraged module now, due to its somewhat broken backend handling
and lack of support for `Cpanel::JSON::XS`. consider switching to JSON::MaybeXS
or perhaps just JSON::PP.

_
                alternate_modules => ['JSON::MaybeXS', 'JSON::PP', 'Cpanel::JSON::XS'],
            },
            {
                module => 'JSON::XS',
                summary => '',
                description => <<'_',

`Cpanel::JSON::XS` is the fork of `JSON::XS` that fixes some bugs and adds some
features, mainly so it's more compatible with `JSON::PP`. See the documentation
of `Cpanel::JSON::XS` for more details on those.

_
                alternate_modules => ['Cpanel::JSON::XS'],
            },
        ],
    },
);

1;
# ABSTRACT:
