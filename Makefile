help:
clean:
	rm -rf dist target coverage
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
	 poetry run pytest --junit-xml=coverage/test-results.xml \
	 --cov=hello_python \
	 --cov-report term-missing  \
	 --cov-report xml:coverage/coverage.xml \
	 --cov-report html:coverage/coverage.html \
	 --cov-report lcov:coverage/coverage.info

all: clean flake8 build install test run
