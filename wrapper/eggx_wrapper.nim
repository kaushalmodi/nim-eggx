# Importing /path/to/eggx_base.h
# Command line:
#   /home/kmodi/.nimble/pkgs/nimterop-#head/nimterop/toast --preprocess -m:c --noHeader -f:ast2 --pnim --nim:/home/kmodi/usr_local/apps/7/nim/devel/bin/nim --pluginSourcePath=/tmp/kmodi/.cache/nim/nimterop/cPlugins/nimterop_1016109612.nim /path/to/eggx_base.h -o /tmp/kmodi/.cache/nim/nimterop/toastCache/nimterop_3793244309.nim

{.push hint[ConvFromXtoItselfNotNeeded]: off.}


{.experimental: "codeReordering".}
const
  PENDOWN* = 2
  PENUP* = 3
  PSET* = 1
  OVERRIDE* = (1 shl typeof(1)(0))
  AUTOREDRAW* = (1 shl typeof(1)(1))
  DOCKAPP* = (1 shl typeof(1)(3))
  SHAPE* = (1 shl typeof(1)(2))
  WHENEVERFLUSH* = (1 shl typeof(1)(4))
  FONTSET* = 0
  ENABLE* = 1
  DISABLE* = 0
proc ggetdisplayinfo*(a1: ptr cint; a2: ptr cint; a3: ptr cint): cint {.
    importc: "eggx_ggetdisplayinfo", cdecl.}
proc gopen*(a1: cint; a2: cint): cint {.importc: "eggx_gopen", cdecl.}
proc winname*(wn: cint; a2: cstring): cint {.importc: "eggx_winname", cdecl,
    varargs.}
proc window*(a1: cint; a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat) {.
    importc: "eggx_window", cdecl.}
proc clsc*() {.importc: "clsc_", cdecl.}
proc gclose*(a1: cint) {.importc: "eggx_gclose", cdecl.}
proc gcloseall*() {.importc: "gcloseall_", cdecl.}
proc newrgbcolor*(a1: cint; a2: cint; a3: cint; a4: cint) {.
    importc: "eggx_newrgbcolor", cdecl.}
proc newcolor*(a1: cint; a2: cstring) {.importc: "eggx_newcolor", cdecl, varargs.}
proc newpen*(a1: cint; a2: cint) {.importc: "eggx_newpen", cdecl.}
proc gclr*(a1: cint) {.importc: "eggx_gclr", cdecl.}
proc line*(a1: cint; a2: cfloat; a3: cfloat; a4: cint) {.importc: "eggx_line",
    cdecl.}
proc pset*(a1: cint; a2: cfloat; a3: cfloat) {.importc: "eggx_pset", cdecl.}
proc gsetfontset*(a1: cint; a2: cstring): cint {.importc: "eggx_gsetfontset",
    cdecl, varargs.}
proc drawstr*(a1: cint; a2: cfloat; a3: cfloat; a4: cint; a5: cfloat;
              a6: cstring) {.importc: "eggx_drawstr", cdecl, varargs.}
proc drawsym*(a1: cint; a2: cfloat; a3: cfloat; a4: cint; a5: cint) {.
    importc: "eggx_drawsym", cdecl.}
proc drawarrow*(a1: cint; a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat;
                a6: cfloat; a7: cfloat; a8: cint) {.importc: "eggx_drawarrow",
    cdecl.}
proc fillarc*(a1: cint; a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat;
              a6: cfloat; a7: cfloat; a8: cint) {.importc: "eggx_fillarc", cdecl.}
proc drawarc*(a1: cint; a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat;
              a6: cfloat; a7: cfloat; a8: cint) {.importc: "eggx_drawarc", cdecl.}
proc circle*(a1: cint; a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat) {.
    importc: "eggx_circle", cdecl.}
proc drawrect*(a1: cint; a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat) {.
    importc: "eggx_drawrect", cdecl.}
proc fillrect*(a1: cint; a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat) {.
    importc: "eggx_fillrect", cdecl.}
proc fillpoly*(a1: cint; a2: ptr cfloat; a3: ptr cfloat; a4: cint; a5: cint) {.
    importc: "eggx_fillpoly", cdecl.}
proc copylayer*(a1: cint; a2: cint; a3: cint) {.importc: "eggx_copylayer", cdecl.}
proc layer*(a1: cint; a2: cint; a3: cint) {.importc: "eggx_layer", cdecl.}
proc putimg24*(a1: cint; a2: cfloat; a3: cfloat; a4: cint; a5: cint;
               a6: ptr cuchar): cint {.importc: "eggx_putimg24", cdecl.}
proc ggetxpress*(a1: cint; a2: ptr cint; a3: ptr cfloat; a4: ptr cfloat): cint {.
    importc: "eggx_ggetxpress", cdecl.}
proc ggetch*(a1: cint): cint {.importc: "eggx_ggetch", cdecl.}
proc saveimg*(a1: cint; a2: cint; a3: cfloat; a4: cfloat; a5: cfloat;
              a6: cfloat; a7: cstring; a8: cint; a9: cstring) {.
    importc: "eggx_saveimg", cdecl, varargs.}
proc gsetborder*(a1: cint; a2: cint; a3: cstring) {.importc: "eggx_gsetborder",
    cdecl, varargs.}
proc gsetbgcolor*(a1: cint; a2: cstring) {.importc: "eggx_gsetbgcolor", cdecl,
    varargs.}
proc gsetinitialattributes*(a1: cint; a2: clong) {.
    importc: "eggx_gsetinitialattributes", cdecl.}
proc gsetinitialborder*(a1: cint; a2: cstring) {.
    importc: "eggx_gsetinitialborder", cdecl, varargs.}
proc gsetinitialbgcolor*(a1: cstring) {.importc: "eggx_gsetinitialbgcolor",
                                        cdecl, varargs.}
proc gsetinitialparsegeometry*(a1: cstring) {.
    importc: "eggx_gsetinitialparsegeometry", cdecl, varargs.}
proc gsetinitialwinname*(a1: cstring; a2: cstring; a3: cstring; a4: cstring) {.
    importc: "eggx_gsetinitialwinname", cdecl.}
proc msleep*(a1: culong) {.importc: "eggx_msleep", cdecl.}
proc depthinfo*(): cint {.importc: "eggx_depthinfo", cdecl.}
  ## ```
                                                            ##   ºï½üÍ½Äê
                                                            ## ```
proc drawnum*(a1: cint; a2: cfloat; a3: cfloat; a4: cint; a5: cfloat;
              a6: cfloat; a7: cint) {.importc: "eggx_drawnum", cdecl.}
{.pop.}

# Importing /path/to/eggx_color.h
# Command line:
#   /home/kmodi/.nimble/pkgs/nimterop-#head/nimterop/toast --preprocess -m:c --noHeader -f:ast2 --pnim --nim:/home/kmodi/usr_local/apps/7/nim/devel/bin/nim --pluginSourcePath=/tmp/kmodi/.cache/nim/nimterop/cPlugins/nimterop_1016109612.nim /path/to/eggx_color.h -o /tmp/kmodi/.cache/nim/nimterop/toastCache/nimterop_3538113869.nim

{.push hint[ConvFromXtoItselfNotNeeded]: off.}


{.experimental: "codeReordering".}
const
  CP_NONE* = 0
  C_REVERSE* = (1 shl typeof(1)(0))
  CP_CONTRAST* = (1 shl typeof(1)(1))
  CP_BRIGHTNESS* = (1 shl typeof(1)(2))
  CP_GAMMA* = (1 shl typeof(1)(3))
  CP_FUNCTION* = (1 shl typeof(1)(4))
  CP_SEPLEVEL* = (1 shl typeof(1)(5))
  DS9_GREY* = 0
  DS9_GRAY* = 0
  DS9_RED* = 1
  DS9_GREEN* = 2
  DS9_BLUE* = 3
  DS9_A* = 4
  DS9_B* = 5
  DS9_BB* = 6
  DS9_HE* = 7
  DS9_I8* = 8
  DS9_AIPS0* = 9
  DS9_SLS* = 10
  DS9_HEAT* = 11
  DS9_COOL* = 12
  DS9_RAINBOW* = 13
  DS9_STANDARD* = 14
  DS9_STAIRCASE* = 15
  DS9_COLOR* = 16
  DS9_BEGIN* = 0
  DS9_NUM* = 17
  IDL1_B_W_LINEAR* = 17
  IDL1_BLUE_WHITE* = 18
  IDL1_GRN_RED_BLU_WHT* = 19
  IDL1_RED_TEMPERATURE* = 20
  IDL1_BLUE_GREEN_RED_YELLOW* = 21
  IDL1_STD_GAMMA_II* = 22
  IDL1_PRISM* = 23
  IDL1_RED_PURPLE* = 24
  IDL1_GREEN_WHITE_LINEAR* = 25
  IDL1_RGN_WHT_EXPONENTIAL* = 26
  IDL1_GREEN_PINK* = 27
  IDL1_BLUE_RED* = 28
  IDL1_16_LEVEL* = 29
  IDL1_RAINBOW* = 30
  IDL1_STEPS* = 31
  IDL1_STERN_SPECIAL* = 32
  IDL1_BEGIN* = 17
  IDL1_NUM* = 16
  IDL2_HAZE* = 33
  IDL2_BLUE_PASTEL_RED* = 34
  IDL2_PASTELS* = 35
  IDL2_HUE_SAT_LIGHTNESS_1* = 36
  IDL2_HUE_SAT_LIGHTNESS_2* = 37
  IDL2_HUE_SAT_VALUE_1* = 38
  IDL2_HUE_SAT_VALUE_2* = 39
  IDL2_PURPLE_RED_WITH_STRIPES* = 40
  IDL2_BEACH* = 41
  IDL2_MAC_STYLE* = 42
  IDL2_EOS_A* = 43
  IDL2_EOS_B* = 44
  IDL2_HARDCANDY* = 45
  IDL2_NATURE* = 46
  IDL2_OCEAN* = 47
  IDL2_PEPPERMINT* = 48
  IDL2_PLASMA* = 49
  IDL2_BLUE_RED* = 50
  IDL2_RAINBOW* = 51
  IDL2_BLUE_WAVES* = 52
  IDL2_VALCANO* = 53
  IDL2_WAVES* = 54
  IDL2_RAINBOW18* = 55
  IDL2_x_RAINBOW* = 56
  IDL2_ORBIT_VIEWER_COLOR* = 57
  IDL2_ORBIT_VIEWER_GREY* = 58
  IDL2_ORBIT_VIEWER_GRAY* = 58
  IDL2_BEGIN* = 33
  IDL2_NUM* = 26
  EGGX_COLOR_BEGIN* = 0
  EGGX_COLOR_NUM* = (
    DS9_NUM + typeof(DS9_NUM)(IDL1_NUM) + typeof(DS9_NUM)(IDL2_NUM))
type
  color_prms* {.bycopy.} = object
    colormode*: cint
    flags*: cint
    contrast*: cfloat
    brightness*: cfloat
    gamma*: cfloat
    seplevel*: cint
    `ptr`*: pointer
    function*: proc (a1: cfloat; a2: pointer; a3: cfloat; a4: cfloat;
                     a5: cfloat; a6: ptr cfloat; a7: ptr cfloat; a8: ptr cfloat) {.
        cdecl.}

proc generatecolor*(a1: ptr color_prms; a2: cfloat; a3: cfloat; a4: cfloat;
                    a5: ptr cint; a6: ptr cint; a7: ptr cint): cint {.
    importc: "eggx_generatecolor", cdecl.}
proc makecolor*(a1: cint; a2: cfloat; a3: cfloat; a4: cfloat; a5: ptr cint;
                a6: ptr cint; a7: ptr cint): cint {.importc: "eggx_makecolor",
    cdecl.}
{.pop.}

