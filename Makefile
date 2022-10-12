install:
	pip install --upgrade pipenv &&\
		pipenv install
lint:
	#lint using pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
deploy:
	#deploy
all: install line test deploy