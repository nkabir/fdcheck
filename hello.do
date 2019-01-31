#!/usr/bin/env xonsh

import os

if "NO_FLAGS" in os.environ:
    del $MAKEFLAGS
    del $REDO_CHEATFDS

gcc -o $ARG3 hello.c 1>&2

redo-ifchange hello.c
