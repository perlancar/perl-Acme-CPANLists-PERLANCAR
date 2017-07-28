package Acme::CPANLists::PERLANCAR::CLIWithUndo;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'CLI utilities with undo feature',
        entries => [
            {
                module => 'App::trash::u', scripts => ['trash-u'],
            },
            {
                module => 'App::perlmv::u', scripts => ['perlmv-u'],
            },
        ],
    },
);

1;
# ABSTRACT:
