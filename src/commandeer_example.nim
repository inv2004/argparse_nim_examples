import commandeer

commandline:
  argument integer, int
  argument floatingPoint, float
  argument character, char
  arguments strings, string
  option optionalInteger, int, "int", "i", -1
  option testing, bool, "testing", "t"
  exitoption "help", "h",
             "Usage: myCLApp [--testing|--int=<int>|--help] " &
             "<int> <float> <char> <string>..."
  errormsg "You made a mistake!"

echo("integer = ", integer)
echo("floatingPoint = ", floatingPoint)
echo("character = ", character)
echo("strings (one or more) = ", strings)

if optionalInteger != 0:
  echo("optionalInteger = ", optionalInteger)

if testing:
  echo("Testing enabled")
