help:
clean:
	rm -rf dist target cover
run:
	poetry run hello-python
build:
	poetry build
install:
	poetry install
flake8:
	poetry run flake8
update:
	poetry update
test:
	 poetry run pytest --junit-xml=cover/test-results.xml \
	 --cov=hello_python \
	 --cov-report term-missing  \
	 --cov-report xml:cover/coverage.xml \
	 --cov-report html:cover/coverage.html \
	 --cov-report lcov:cover/coverage.info

all: clean flake8 build install test run
