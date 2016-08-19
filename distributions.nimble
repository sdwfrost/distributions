# Package

packageName   = "distributions"
version       = "0.1.0"
author        = "Simon Frost"
description   = "Random numbers and distributions in Nim"
license       = "MIT"

srcDir        = "src"

# Dependencies

requires "nim >= 0.14.2"

# Tasks

before install:
  exec "nim e install_librmath.nims"

task benchmarks, "Running benchmarks":
  withDir "benchmarks":
    exec "nim c -r -d:release benchmark"

task tests, "Running tests":
  withDir "tests":
    exec "nim c -r test"

