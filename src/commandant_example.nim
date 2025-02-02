import commandant, strformat

commandline:
  flag(verbose, "verbose", "v")
  subcommand ls, "ls":
    discard
  subcommand get, "get":
    argument(id, int)
  subcommand put, "put":
    argument(di, int)
  arguments(sha, string, false)

  # if you define an argument, then you are REQUIRED to always provide a value.
  #     commandant will terminate the program if an argument is missing.
  # conversely, flags are optional and the program will run whether they are 
  #     provided or not.
  # options are also optional

echo verbose
if ls:
  echo "ls"
elif get:
  echo "get: ", id
elif put:
  echo "put: ", di
elif sha.len == 0:
  echo "ls again"
elif sha[0].len == 2:
  echo "sha: ", sha[0]