import std/[strutils]

const
  name = "eggx"

task wrap, "Generate $# wrapper using Nimterop" % [name]:
  mkDir("wrapper")
  exec("nim c -d:genWrapper --verbosity:0 --app:lib src/$#.nim > wrapper/$#_wrapper.nim" % [name, name])
  # Remove the actual paths to header files.
  exec(r"sed -ri 's|/[^ ]+/([^/]+\.h)|/path/to/\1|g' wrapper/$#_wrapper.nim" % [name])
  # Remove the time stamp to reduce commit noise.
  exec(r"sed -ri '/Generated @/d' wrapper/$#_wrapper.nim" % [name])
  # Remove the "Saved to .." comment.
  exec(r"sed -ri '/^# Saved to/d' wrapper/$#_wrapper.nim" % [name])
