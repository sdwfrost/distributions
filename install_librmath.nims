import ospaths

echo "Building libRmath-nim"

# Clone
var buildDir = thisDir() / "libRmath-nim"
if existsDir(buildDir):
  withDir "libRmath-nim":
    exec "git pull"
    exec "make"
else:
  exec "git clone https://github.com/sdwfrost/libRmath-nim" 
  withDir "libRmath-nim":
    exec "make"

# Copy library to $HOME/.nimble/lib

when defined(windows):
  const
    rmathlib = "Rmath-nim.dll"
elif defined(macosx):
  const
    rmathlib = "libRmath-nim.dylib"
else:
  const
    rmathlib = "libRmath-nim.so"
const libdir = getHomeDir() / ".nimble" / "lib"
mkDir(libdir) # No error if exists
cpFile(thisDir() / "libRmath-nim" / "src" / rmathlib, libdir / rmathlib)

# Clean up
rmDir("libRmath-nim")

# Remind
echo "Please ensure that " & libdir & " is added to the library search path"

