install-python:
	# pyenv virtualenv 3.11.4 django-keycloak || pyenv activate django-keycloak
	pip install --upgrade setuptools poethepoet
	poe install
	poe addsudo  "file://`pwd`#egg=django-keycloak[dev,doc]"

bump-patch:
	poetry version patch

bump-minor:
	poetry version minor

deploy-pypi: clear
	poetry build
	poetry publish

clear:
	rm -rf dist/*
