install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		python -m textblob.download_corpora
lint:
	#lint using pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	python -m pytest -vv --cov=mylib --cov=main test_*.py
build:
	#build container
deploy:
	#deploy
all: install line test deploy