all: build

defualt: build

build:
	jupyter-book build book/

clean: book/_build
	rm -rf book/_build
