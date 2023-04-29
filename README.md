# DOTFILES

This repo holds my most common config files.

The general approach is to have a `bootstrap` script to setup (and "re-setup") the configs, for instance, the for **git**, the `gitconfig-user` filed has my config plus a bunch of git alias I use a lot but it does not have a user name and email. The `bootstrap` script will create an empty `.gitconfig` file, copy all the content from `gitconfig-user` and prompt for a user name and email value, which is added on the `.gitconfig` file, outside the repo. That way, I can use the same bootstrap to setup different machines (work and personal for instance).

## After cloning

After cloning the repo, run

```
git config --local user.name "Sebastian Morales"
git config --local user.email 2837582+smoralesd@users.noreply.github.com
```

This will set up the user name and email to the no reply address from github.