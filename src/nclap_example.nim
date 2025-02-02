import nclap/[
  parser,
  cliargs,
  arguments
]

var p = newParser("example number 1, flags only")

# NOTE: p.addFlag(short, long, description=long, holds_value=false, required=false)
p.addFlag("-h", "--help", "shows this help message")
  .addFlag("-v", "--verbose", "shows additional information")
  .addCommand("ls")
  .addCommand("get", @[addArgument("id")])
  .addFlag("-o", "--output", "outputs to a file", true)

let args = p.parse()

# you can access the flag value with the short or the long version
if args["--help"].registered:
  # NOTE: the `showHelp` message can be tuned,
  # try to tinker with the parameters and see what happens
  p.showHelp(exit_code=1)

echo args["-v"].registered

if args["ls"].registered:
  echo "ls"
elif args["get"].registered:
  echo "get: ", args["get"].getContent()
elif args["put"].registered:
  echo "put: ", args["get"].getContent()

