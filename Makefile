all: run

dev:
	poetry install

run:
	poetry run python ./epr.py

release:
	python -m build
	twine upload --skip-existing dist/*
