# Git: Essential Commands

## Branch

### Create

```shell
git switch -c <new_branch>
```

```shell
git checkout -b <new_branch>
```

An orphan or empty branch:

```shell
git switch --orphan <new_branch>
```

```shell
git checkout --orphan <new_branch>
```

## Various

Rectify erroneous information about an author throughout the history:

> See https://help.github.com/en/github/using-git/changing-author-info

```shell
git filter-branch -f --env-filter '
OLD_EMAIL="old@email.com"
CORRECT_NAME="username"
CORRECT_EMAIL="correct@email.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
```

## Resouces

* https://rubicotech.com/blog/advanced-git-features

