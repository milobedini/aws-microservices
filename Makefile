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
	docker build -t deploy-wikiapi .
run:
	#run docker
	#docker run -p 8000:8000 43b96820dc2d
deploy:
	#deploy
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 105467691285.dkr.ecr.us-east-1.amazonaws.com
	docker build -t wiki-api .
	docker tag wiki-api:latest 105467691285.dkr.ecr.us-east-1.amazonaws.com/wiki-api:latest
	docker push 105467691285.dkr.ecr.us-east-1.amazonaws.com/wiki-api:latest
