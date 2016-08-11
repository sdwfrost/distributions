# Package

packageName   = "distributions"
version       = "0.1.0"
author        = "Simon Frost"
description   = "Random numbers and distributions in Nim"
license       = "MIT"

srcDir        = "src"

# Dependencies

requires "nim >= 0.14.2", "nimbench"

# Tasks

before install:
  echo "Building libRmath-nim"
  exec "git clone https://github.com/sdwfrost/libRmath-nim"
  withDir "libRmath-nim":
    exec "make"
  when defined(windows):
    const
      rmathlib = "Rmath-nim.dll"
  elif defined(macosx):
    const
      rmathlib = "libRmath-nim.dylib"
  else:
    const
      rmathlib = "libRmath-nim.so"
  const libdir = "/Users/sdf22/" & ".nimble/" & "lib/"
  cpFile(thisDir() & "/" & "libRmath-nim/" & "src/" & rmathlib, libdir & rmathlib)
  rmDir("libRmath-nim")

task tests, "Running tests":
  withDir "tests":
    exec "nim c -r test"
