package Acme::CPANLists::PERLANCAR::MagicVariableTechnique;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Modules which employ magic variable technique to do stuffs',
        description => <<'_',

This is a list of modules which provide some "magic" variable which you can
get/set to perform stuffs. I personally find this technique is mostly useful to
"temporarily set" stuffs, by combining it with Perl's `local()`.

_
        entries => [
            {
                module => 'File::chdir',
                description => <<'_',

Provides `$CWD` which you can use to change directory. By doing:

    local $CWD = ...;

in a subroutine or block, you can safely change directory temporarily without
messing current directory and breaking code in other parts. Very handy and
convenient.

This is the first module I found/use where I realized the technique. Since then
I've been looking for other modules using similar technique, and have even
created a few myself.

_
            },
            {
                module => 'File::umask',
                description => <<'_',

Provides `$UMASK` to get/set umask.

_
            },
            {
                module => 'Umask::Local',
                description => <<'_',

Like `File::umask`, but instead of using a tied variable, uses an object with
its `DESTROY` method restoring original umask. I find the interface a bit more
awkward.

_
                alternate_modules => ['File::umask'],
            },
            {
                module => 'Locale::Tie',
                description => <<'_',

Provides `$LANG`, `$LC_ALL`, `$LC_TIME`, and few others to let you (temporarily)
set locale settings.

_
            },
            {
                module => 'Locale::Scope',
                description => <<'_',

Like `Locale::Tie`, but instead of using a tied variable, uses an object with
its `DESTROY` method restoring original settings.

_
            },
        ],
    },
);

1;
# ABSTRACT:
