#!/bin/env bash

# create new ssh key, e.g. for github
ssh-keygen -t ed25519 -C "$USER_EMAIL"

# add ssh key to key agent
eval "$(ssh-agent -s)"  # start ssh key agent
ssh-add ~/.ssh/id_ed25519

# copy key to clipboard
clip < ~/.ssh/id_ed25519.pub