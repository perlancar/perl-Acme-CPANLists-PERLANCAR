package Acme::CPANLists::PERLANCAR::Task::WorkingWithTree;

# DATE
# VERSION

my $text = <<'_';
**Basics**

Perl classes to represent tree (node) structure: <pm:Tree::Object> and
<pm:Tree::ObjectXS> (comes with several varieties). They provide methods like
walking a tree, checking whether a node is the first child, getting sibling
nodes, and so on.

Perl modules to manipulate tree: <pm:Data::Tree>, <pm:Tree::Simple>.

Memory-efficient tree nodes in Perl: <pm:Tree::Node>.


**Creating**

<pm:Tree::FromStruct>, <pm:Tree::FromText>, <pm:Tree::FromTextLines>,
<pm:Tree::Create::Callback>, <pm:Tree::Create::Callback::ChildrenPerLevel>,
<pm:Tree::Create::Size>, <pm:Tree::FromFS>.

<pm:Data::Random::Tree>.


**Visualizing as text**

<pm:Tree::ToText>, <pm:Tree::ToTextLines>.


**Visualizing as graphic**

TODO


**Other modules**

<pm:Tree::ToFS>.

Special kinds of trees: TODO.


**Roles**

<pm:Role::TinyCommons::Tree>.

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
