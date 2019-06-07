#!/usr/bin/env python

import os
import platform
import re
import subprocess
import sys
from importlib import import_module

mypy_version = os.getenv("PLUGIN_VERSION")
result = subprocess.check_output(
    [
        sys.executable,
        "-m",
        "pip",
        "install",
        f"mypy=={mypy_version}" if mypy_version else "mypy",
    ]
)

mypy_version = re.match(b"^Successfully installed mypy-(.+)$", result.split(b"\n")[-2]).group(1).decode("utf-8")

print(f"-- Python {platform.python_version()}, mypy {mypy_version}")

args = []

if os.getenv("PLUGIN_STRICT"):
    args.append("--strict")

args.append(os.getenv("PLUGIN_PACKAGE"))

import_module("mypy.main").main(None, args=args)
