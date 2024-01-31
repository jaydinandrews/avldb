VENV = .venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip

help: $(VENV)/bin/activate
	$(PYTHON) main.py --help

$(VENV)/bin/activate: requirements.txt
	python3 -m venv $(VENV)
	$(PIP) install -r requirements.txt

clean:
	find . | grep -E "__pycache__" | xargs rm -rf
	rm -rf logs/*.log

wipe: clean
	rm -rf $(VENV)

lint:
	flake8 --exit-zero --exclude '$(VENV)' .