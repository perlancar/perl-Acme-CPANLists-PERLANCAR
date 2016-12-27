package Acme::CPANLists::PERLANCAR::Task::GettingTempDir;

# DATE
# VERSION

our @Module_Lists = (
    {
        summary => 'Getting system-wide temporary directory in a portable way',
        description => <<'_',

There's the good ol' <pm:File::Spec> which has a `tmpdir` function. On Unix it
looks at `TMPDIR` environment variable before falling back to `/tmp`.
<pm:File::Temp> uses this for its `tempdir` when a template is not specified.

Then there's <pm:File::Util::Tempdir> which tries a little harder. On Unix, its
`get_tempdir` will look at `TMPDIR`, then also `TEMPDIR`, `TMP`, `TEMP`. If none
of those are set, it will return the first existing directory from the list:
`/tmp`, `/var/tmp`. If everything fails, will die.

_
        tags => ['task'],
        entries => [
            {
                module=>'File::Spec',
            },
            {
                module=>'File::Util::Tempdir',
            },
        ],
    },
);

1;
# ABSTRACT:
