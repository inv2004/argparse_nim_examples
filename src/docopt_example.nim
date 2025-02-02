let doc = """
Example.

Usage:
  example
  example [options] ls
  example [options] push
  example [options] get <id>
  example <sha>

Options:
  -h --help     Show this screen.
  -v --verbose  Verbose
"""

import strutils
import docopt

let args = docopt(doc, version = "2.0")

echo args

if args["push"]:
  echo "push"
elif args["get"]:
  echo "get: ", parseInt($args["<id>"]) # not type-safe
elif args["<sha>"]:
  echo "sha: ", parseInt($args["<sha>"])
else:
  echo "ls"
