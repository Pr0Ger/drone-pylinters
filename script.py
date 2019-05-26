#!/usr/bin/env python

import os
import subprocess
import sys
from importlib import import_module

mypy_version = os.getenv("PLUGIN_VERSION")
subprocess.check_call(
    [
        sys.executable,
        "-m",
        "pip",
        "install",
        f"mypy=={mypy_version}" if mypy_version else "mypy",
    ]
)

args = []

if os.getenv("PLUGIN_STRICT"):
    args.append("--strict")

args.append(os.getenv("PLUGIN_PACKAGE"))

import_module("mypy.main").main(None, args=args)
