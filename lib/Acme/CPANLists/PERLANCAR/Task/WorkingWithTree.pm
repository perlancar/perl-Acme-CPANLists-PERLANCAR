package Acme::CPANLists::PERLANCAR::Task::WorkingWithTree;

# DATE
# VERSION

my $text = <<'_';
**Basics**

Perl classes to represent tree (node) structure: `Tree::Object` and
`Tree::ObjectXS` (comes with several varieties). They provide methods like
walking a tree, checking whether a node is the first child, getting sibling
nodes, and so on.

Perl modules to manipulate tree: `Data::Tree`, `Tree::Simple`.

Memory-efficient tree nodes in Perl: `Tree::Node`.


**Creating**

`Tree::FromStruct`, `Tree::FromText`, `Tree::FromTextLines`,
`Tree::Create::Callback`, `Tree::Create::Callback::ChildrenPerLevel`,
`Tree::Create::Size`, `Tree::FromFS`.

`Data::Random::Tree`.


**Visualizing as text**

`Tree::ToText`, `Tree::ToTextLines`.


**Visualizing as graphic**

TODO


**Other modules**

`Tree::ToFS`.

Special kinds of trees: TODO.


**Roles**

`Role::TinyCommons::Tree`.

_

our @Module_Lists = (
    {
        summary => 'Working with tree data structure in Perl',
        description => $text,
        tags => ['task'],
        entries => [
            map { +{module=>$_} } $text =~ /`(\w+(?:::\w+)+)`/g
        ],
    },
);

1;
# ABSTRACT:
