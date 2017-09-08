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
                'x.date' => '2017-09-08',
                module => 'List::MoreUtils',
                summary => 'License confusion and ',
                description => <<'_',

For more information, see https://www.reddit.com/r/perl/comments/6ymdez/what_are_the_background_details_pertaining_to_the/.

Recent versions of <pm:List::Util> have implemented many functions from
<pm:List::MoreUtils>.

_
                alternate_modules => ['List::Util', 'List::SomeUtils', 'List::AllUtils'],
            },
            {
                module => 'Log::Any::IfLOG',
                summary => 'Retired workaround',
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
            {
                module => 'Module::Path',
                summary => '',
                description => <<'_',

It's a nice little concept and module, and often useful. But the decision like
defaulting to doing abs_path()
(https://rt.cpan.org/Public/Bug/Display.html?id=100979), which complicates the
module, makes its behavior different than Perl's require(), as well as opens the
can of worms of ugly filesytem details, has prompted me to release an
alternative. Module::Path::More also has the options to find .pod and/or .pmc
file, and find all matches instead of the first.

_
                alternate_modules => ['Module::Path::More'],
            },
        ],
    },
);

1;
# ABSTRACT:
