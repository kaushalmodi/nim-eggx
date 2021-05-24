import nimterop/cimport
from os import `/`, parentDir

# static:
#   cDisableCaching()
#   cDebug()

const
  eggxVersion = "0.80"
  # https://gitter.im/nim-lang/Nim?at=5c4e7a1754f21a71a1b8ede5
  includePath = currentSourcePath.parentDir() / "lib" / ("eggx-" & eggxVersion)
static:
  cAddSearchDir(includePath)

{.passL: "-lX11".} # for X11

{.compile: includePath / "eggx_base.c".}
{.compile: includePath / "eggx_color.c".}

cPlugin:
  import std/[strutils]

  proc onSymbol(sym: var Symbol) {.exportc, dynlib.} =
    if sym.name == "IDL2__RAINBOW":
      # Fixes:
      # Error: unhandled exception: nimterop/getters.nim(133, 16)
      # `name == existing[nimName]` Identifier 'IDL2__RAINBOW' is a
      # stylistic duplicate of identifier 'IDL2_RAINBOW', use
      # 'cPlugin:onSymbol()' to rename
      sym.name = "IDL2_x_RAINBOW"
    else:
      # Remove the 'eggx_' prefix for all symbols.
      sym.name = sym.name.replace("eggx_", "").strip(chars={'_'})

cImport(cSearchPath("eggx_base.h"), recurse = false, flags = "--noHeader -f:ast2")
cImport(cSearchPath("eggx_color.h"), recurse = false, flags = "--noHeader -f:ast2")

# Ref: https://gitter.im/nim-lang/Nim?at=5c4f3b76c2dba5382ea13ef8
#      http://ix.io/1zqR/nim
