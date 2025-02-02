import therapist

let ls = ()

let get = (
  id: newIntArg(@["<id>"], help="idhelp")
)

let put = (
  di: newIntArg(@["<di>"], help="dihelp")
)

let spec = (
  v: newFlagArg("-v, --verbose", help="verb"),
  ls: newCommandArg(@["ls"], ls, help = "lshelp"),
  get: newCommandArg(@["get"], get, help = "gethelp"),
  put: newCommandArg(@["put"], put, help = "puthelp"),
  cmd: newStringArg("<command>", "Command to run", optional=true),
  help: newHelpArg()
)

spec.parseOrQuit()

if spec.ls.seen:
  echo "ls"
elif spec.get.seen:
  echo "get: ", get.id.value
elif spec.put.seen:
  echo "put: ", put.di.value
elif spec.cmd.value.len == 2:
  echo "sha: ", spec.cmd.value
else:
  echo "ls again"
