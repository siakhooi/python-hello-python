help:
clean:
	rm -rf dist
run:
	poetry run hello-python
build:
	poetry build
install:
	poetry install
test:
	 poetry run pytest

all: clean build install test run
