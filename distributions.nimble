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
  const libdir = "~/" & ".nimble/" & "lib/"
  cpFile(thisDir() & "/" & "libRmath-nim/" & "src/" & rmathlib, libdir & rmathlib)
  cpFile(thisDir() & "/" & "libRmath-nim/" & "src/" & rmathlib, thisDir() & "/examples/" & rmathlib)
  cpFile(thisDir() & "/" & "libRmath-nim/" & "include/" & "Rmath.h", thisDir() & "/examples/" & "Rmath.h")
  cpFile(thisDir() & "/" & "libRmath-nim/" & "include/" & "R_ext/" & "Arith.h", thisDir() & "/examples/R_ext/" & "Arith.h")
  cpFile(thisDir() & "/" & "libRmath-nim/" & "include/" & "R_ext/" & "Boolean.h", thisDir() & "/examples/R_ext/" & "Boolean.h")
  cpFile(thisDir() & "/" & "libRmath-nim/" & "include/" & "R_ext/" & "Error.h", thisDir() & "/examples/R_ext/" & "Error.h")
  cpFile(thisDir() & "/" & "libRmath-nim/" & "include/" & "R_ext/" & "Print.h", thisDir() & "/examples/R_ext/" & "Print.h")
  cpFile(thisDir() & "/" & "libRmath-nim/" & "include/" & "R_ext/" & "RS.h", thisDir() & "/examples/R_ext/" & "RS.h")
  cpFile(thisDir() & "/" & "libRmath-nim/" & "include/" & "R_ext/" & "Random.h", thisDir() & "/examples/R_ext/" & "Random.h")
  cpFile(thisDir() & "/" & "libRmath-nim/" & "include/" & "R_ext/" & "libextern.h", thisDir() & "/examples/R_ext/" & "libextern.h")
  rmDir("libRmath-nim")

task tests, "Running tests":
  withDir "tests":
    exec "nim c -r test"
