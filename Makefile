PY?=python3
PIP?=pip3
DC?=docker-compose

CODE_ROOT?=pipeline

unzip-all:
	bash $(CODE_ROOT)/scripts/unzip_all.sh

gen-readme:
	python manage.py update-readme

gen-notes-md:
	python manage.py gen-notes-md

dvc-add:
	ls raw-data | grep -v '.dvc' | xargs -I{} dvc add raw-data/{}
	make gen-readme

push-all:
	make flake8
	dvc push
	git push

setup:
	bash $(CODE_ROOT)/scripts/set-env-mac.sh

flake8:
	flake8 $(CODE_ROOT)

test:
	PYTHONPATH=$(CODE_ROOT) pytest --cov $(CODE_ROOT) --cov-report term-missing:skip-covered --capture=no -p no:cacheprovider

.PHONY: check-dup gen-meta gen-readme gen-notes-md
.PHONY: dvc-add push-all
.PHONY: setup flake8 test
