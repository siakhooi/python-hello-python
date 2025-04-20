import sys

from hello_python.util import get_arguments


def run():
    print("Hello, Python CLI!")
    print("argument list", sys.argv)
    argv = get_arguments(sys.argv)
    print("argument list", argv)
