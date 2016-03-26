package Acme::CPANLists::PERLANCAR::NonMooseStyleClassBuilder;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Non-Moose-style class builders',
        description => <<'_',

This list catalogs class builders with interface that is different than the
Moose family.

See also a whole host of Class::Accessor::* modules.

_
        entries => [
            {module => 'Class::Meta::AccessorBuilder',
             summary=>'Part of the Class::Meta framework'},
            {module => 'Class::Struct'},
            {module => 'Class::Builder'},
            {module => 'Class::GenSource',
             summary=>'This is more like code generator, it generates Perl code source for the entire class definition, not just accessors'},
            {module => 'Object::Declare'},
            {module => 'Object::Tiny'},
            {module => 'Class::Tiny'},
            {module => 'Object::New',
             summary=>'Only provides a new() constructor method'},
            {module => 'Class::Accessor',
             summary => 'Also supports Moose-style "has" predicate'},
            {module => 'Class::XSAccessor',
             summary=>'Fast version of Class::Accessor, used by Moo'},
        ],
    },
);

1;
# ABSTRACT:
