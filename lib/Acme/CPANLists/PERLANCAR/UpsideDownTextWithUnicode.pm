package Acme::CPANLists::PERLANCAR::UpsideDownTextWithUnicode;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Modules that can flip Latin text (make your text '.
            'look upside down) using Unicode characters',
        entries => [
            {
                module=>'Text::UpsideDown',
                summary => 'First released in 2008, comes with a CLI called `ud`',
            },
            {
                module => 'Acme::Flip',
                summary => 'A 2009 reinvention of Text::UpsideDown, without any CLI',
            },
        ],
    },
);

1;
# ABSTRACT:
