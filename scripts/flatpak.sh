#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.freedesktop.Sdk 1.6
