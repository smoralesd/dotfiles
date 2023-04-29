#! /bin/sh

echo "Enter user.name value"

read username

echo "Enter user.email value"

read email

signingkey=$( cat ~/.ssh/id_ed25519.pub )

echo "[gpg]" > ~/.gitconfig
echo "\tformat = ssh" >> ~/.gitconfig
echo "[user]" >> ~/.gitconfig
echo "\tname = $username" >> ~/.gitconfig
echo "\temail = $email">> ~/.gitconfig
echo "\tsigningkey = \"$signingkey\"" >> ~/.gitconfig
echo "[include]" >> ~/.gitconfig
echo "\tpath = ~/repos/dotfiles/git/gitconfig-user" >> ~/.gitconfig
