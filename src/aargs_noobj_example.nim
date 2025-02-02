
type
  CmdKind = enum Ls, Put, Get

  CmdLs = object
  CmdPut = object
    id: int
  CmdGet = object
    id: int

  Args = object
    verbose: bool
    case kind: CmdKind
    of Ls: ls: CmdLs
    of Put: put: CmdPut
    of Get: get: CmdGet


let args = (verbose: true, kind: Put, put: CmdPut(id: 100))

proc runLs(c: CmdLs) =
  echo "ls"

proc runPut(c: CmdPut) =
  echo "put: ", c.id

proc runGet(c: CmdGet) =
  echo "get: ", c.id
case args.kind
of Ls:
  discard
  # runLs(args.ls)
of Put:
  runPut(args.put)
of Get:
  discard
  # runGet(args.get)
