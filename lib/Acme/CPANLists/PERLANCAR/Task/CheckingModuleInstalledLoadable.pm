package Acme::CPANLists::PERLANCAR::Task::CheckingModuleInstalledLoadable;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Checking if a module is installed or loadable',
        description => <<'_',

If you simply want to check that a module's `.pm` file is locatable in `@INC`,
you can just do something like:

    my $mod = "Foo/Bar.pm";
    for my $dir (@INC) {
        next if ref $dir;
        if (-f "$dir/$mod") {
            print "Module $mod is installed";
            last;
        }
    }

Or you can use something like `Module::Path` or `Module::Path::More` which does
similar to the above.

A module can also be loaded from a require hook in ~@INC~ (like in the case of
fatpacked or datapacked script) and the above methods does not handle it.
Instead, you'll need to use `Module::Load::Conditional`'s `check_install` or
`Module::Installed::Tiny`'s `module_installed`:

    use Module::Load::Conditional qw(check_install);
    if (check_install(module => "Foo::Bar")) {
        # Foo::Bar is installed
    }

The above does not guarantee that the module will be loaded successfully. To
check that, there's no other way but to actually try to load it:

    if (eval { require Foo::Bar; 1 }) {
        # Foo::Bar can be loaded (and was loaded!)
    }

_
        tags => ['task'],
        entries => [
            {
                module=>'Module::Path',
            },
            {
                module=>'Module::Path::More',
            },
            {
                module=>'Module::Load::Conditional',
            },
            {
                module=>'Module::Installed::Tiny',
            },
        ],
    },
);

1;
# ABSTRACT:
