#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

dnf install -y flatpak flatpak-builder
dnf clean all
