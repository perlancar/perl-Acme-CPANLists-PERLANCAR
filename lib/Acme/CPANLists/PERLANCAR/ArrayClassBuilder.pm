package Acme::CPANLists::PERLANCAR::ArrayClassBuilder;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Class builders for array-backed classes',
        description => <<'_',

This list catalogs class builders for classes that use array (instead of the
popular hash) as their backend storage.

Hash is the vastly popular backend for object due to its flexibility and
convenient mapping of hash keys to object attributes, but actually Perl objects
can be references to any kind of data (array, scalar, glob). Storing objects as
other kinds of references can be useful in terms of attribute access speed,
memory size, or other aspects. But they are not as versatile and generic as
hash.

_
        entries => [
            {module => 'Class::XSAccessor::Array'},
            {module => 'Class::Build::Array::Glob'},
            {module => 'Class::ArrayObjects'},
            {module => 'Object::ArrayType::New',
             summary => 'Only supports defining constants for array indexes'},
        ],
    },
);

1;
# ABSTRACT:
