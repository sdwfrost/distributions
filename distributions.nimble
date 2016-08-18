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

task deps, "Installing dependencies":
  exec "nim e install_librmath.nims"


task tests, "Running tests":
  withDir "tests":
    exec "nim c -r test"

