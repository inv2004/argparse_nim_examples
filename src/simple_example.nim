import simple_parseopt

let options = get_options:
    name          = "Default Name"
    active        = false
    letter_one    = 'a'
    age           = 1
    hello:string
    big:float64   = 1.1
    small:float   = 2.2
    flat:uint     = 2
    arguments:seq[string]

echo options.name & " is " & options.age.repr & " years old!"
