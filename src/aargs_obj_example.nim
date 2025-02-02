type
  Args = ref object of RootObj
    verbose: bool
  Ls = ref object of Args
  Put = ref object of Args
    id: int
  Get = ref object of Args
    id: int

proc run(cmd: Put) =
  echo "verbose: ", cmd.verbose
  echo "put: ", cmd.id

let args = Put(verbose: true, id: 100)

run(args)
