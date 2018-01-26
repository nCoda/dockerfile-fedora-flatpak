#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

dnf update -y
dnf install -y flatpak flatpak-builder
dnf install -y git
dnf install -y sudo
dnf clean all
