import simpleargs

var p: ParseSchema

p.initParser("my tool"):
    p.addOption("-i", "--input", help="path to input", required=true, default="input.txt"):
        p.addOption("-o", "--out", help="Output file")        
        p.addFlag(long="--flag_on", help="This flag is true")

var opts = p.parseOptions()
