# Git

⬅️ [README](README.md)

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

From a commit:

```shell
git checkout -b my-branch abcd1234
```

## Specific Git configuration for all subdirectories

- Create `~/my/folder/.gitconfig`:

```
[user]
    name = Aly Sivji
    email = client-work@alysivji.com
```

- Update the global ~/.gitconfig:

```
[includeIf "gitdir:~/my/folder/"]
    path = ~/my/folder/.gitconfig
```

## Various

### Execute Git in a specific folder

```shell
git -C my-folder checkout my-branch
```

### Rectify erroneous information about an author throughout the history:

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

## SSH

### Generate an SSH key pair

```
ssh-keygen -t ed25519 -C "email@email.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
xclip -sel clip < ~/.ssh/id_ed25519.pub
```

```
ssh -T git@gitlab.domain.fr -vvv
```

## Resouces

* https://rubicotech.com/blog/advanced-git-features

⬅️ [README](README.md)