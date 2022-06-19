PY?=python3
PIP?=pip3
DC?=docker-compose

setup:
	bash scripts/set-env-mac.sh

gen-datasets-readme:
	bash scripts/gen-dataset-readme.sh

.PHONY: setup gen-datasets-readme
