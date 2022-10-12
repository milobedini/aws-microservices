install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
lint:
	#lint using pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	python -m pytest -vv --cov=mylib test_logic.py
build:
	#build container
deploy:
	#deploy
all: install line test deploy