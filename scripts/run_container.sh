#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

dnf update -y
dnf install -y flatpak flatpak-builder
dnf install -y git
dnf install -y sudo

dnf install -y npm nodejs
curl https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo
dnf install -y yarn

dnf clean all
