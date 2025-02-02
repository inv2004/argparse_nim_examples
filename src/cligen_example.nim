import cligen

proc ls(verbose=false) =
  echo "ls: ", verbose

proc get(args: seq[int]) =
  echo "get: ", args

proc put(yippee: int, myFlts: seq[float], verb=false) =
  discard


when isMainModule:
  import cligen
  dispatchMulti([ls, help={"verbose": "vvv"}], [get], [put])