Install:
	pip install --upgrade pip &&
		pip install -r requirements.txt

test:
	pytest -m pytest --nbval DataScienceDemo.ipynb

format:
	black*.py

lint:
	pylint --disable=R,C *.py

all: format lint test
