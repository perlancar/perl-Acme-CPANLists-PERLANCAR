package Acme::CPANLists::PERLANCAR::Avoided;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => "Modules I'm currently avoiding",
        description => <<'_',

This is a list of modules I'm currently avoiding to use in my code, for some
reason. Most of the modules wered used in my code in the past.

Using a <pm:Dist::Zilla> plugin
<pm:Dist::Zilla::Plugin::Acme::CPANLists::Blacklist>, you can make sure that
during building, your distribution does not specify a prerequisite to any of the
modules listed here. (You should make your own blacklist though).

_
        entries => [
            {
                module => 'Log::Any',
                summary => 'Startup overhead',
                description => <<'_',

After the 1.x version, I no longer prefer <pm:Log::Any> and have developed an
alternative called <pm:Log::ger>.

_
                alternate_modules => ['Log::ger'],
            },
            {
                module => 'File::Flock',
                summary => 'Too many deps',
                description => <<'_',

I used to use <pm:File::Flock> due to its simple interface. However, this module
depends on things like <pm:AnyEvent>, <pm:Data::Structure::Util>,
<pm:File::Slurp>, et al, all of which seem unnecessary. Nowadays I'm opting to
use <pm:File::Flock::Retry>, or just plain `flock()`.

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

I used to use this module because I didn't know that <pm:Exporter> (since perl
5.8.3, 2004) can also be used without subclassing, i.e. instead of:

    use Exporter;
    our @ISA = qw(Exporter);
    our @EXPORT = (...);

you can also use it like this:

    use Exporter qw(import);
    our @EXPORT = (...);

Hence, this module (first released in 2001) is no longer necessary. Besides,
this module has a worse startup overhead than <pm:Exporter> *and* has less
features. So there is absolutely no reason to use it.

_
                alternate_modules => ['Exporter'],
            },
            {
                module => 'JSON',
                summary => 'Somewhat broken',
                description => <<'_',

JSON.pm is a discouraged module now, due to its somewhat broken backend handling
and lack of support for <pm:Cpanel::JSON::XS>. consider switching to
<pm:JSON::MaybeXS> or perhaps just <pm:JSON::PP>.

_
                alternate_modules => ['JSON::MaybeXS', 'JSON::PP', 'Cpanel::JSON::XS'],
            },
            {
                module => 'JSON::XS',
                summary => '',
                description => <<'_',

<pm:Cpanel::JSON::XS> is the fork of <pm:JSON::XS> that fixes some bugs and adds
some features, mainly so it's more compatible with <pm:JSON::PP>. See the
documentation of <pm:Cpanel::JSON::XS> for more details on those.

_
                alternate_modules => ['Cpanel::JSON::XS'],
            },
        ],
    },
);

1;
# ABSTRACT:
