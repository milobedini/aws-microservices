install:
	pip install --upgrade pipenv &&\
		pipenv install
lint:
	#flake8 or pylint or black
test:
	#test
deploy:
	#deploy
all: install line test deploy