install:
	pip install -r requirements.txt
	pip install -e .

test:
	python -m unittest discover tests/
