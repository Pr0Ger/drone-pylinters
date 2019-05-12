#!/usr/bin/env python

import os
import sys

from mypy.main import main

args = []

if os.getenv("PLUGIN_STRICT"):
    args.append('--strict')

args.append(os.getenv("PLUGIN_PACKAGE"))

main(None, args=args)
