import sys

def run():
    print("Hello, Python!")
    print("This is a CLI application.")
    print ('argument list', sys.argv)
    argv=sys.argv[1:]
    print ('argument list', argv)
