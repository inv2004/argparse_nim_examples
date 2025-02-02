import argparse

var p = newParser:
  flag("-v", "--verbose")
  command("ls"):
    run:
      echo "ls"
  command("get"):
    arg("id")
    run:
      echo "get: ", parseInt(opts.id)
      echo opts.parentOpts.verbose
  command("put"):
    arg("di")
    run:
      echo "put: ", parseInt(opts.di)
      echo opts.parentOpts.verbose
  run:
    echo "ls"
    echo opts.repr

try:
  p.run()
except UsageError as e:
  stderr.writeLine getCurrentExceptionMsg()
  quit(1)
