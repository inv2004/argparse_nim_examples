import blarg

for kind, key, val in getopt():
  case kind
  of cmdArgument:
    echo "got argument ", key
  of cmdShortOption, cmdLongOption:
    echo "got option ", key, " = ", val
  else:
    assert false # Cannot happen