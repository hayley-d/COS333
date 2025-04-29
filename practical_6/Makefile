PYTHON := python3
PERL := perl
INPUT := input.txt
COUNT := 2

# --- Automated Test Targets ---
.PHONY: test test-python test-perl

test: test-python test-perl

test-python:
	@echo "🔎 Running Python unit tests..."
	$(PYTHON) -m unittest test_script.py

test-perl:
	@echo "🔎 Running Perl unit tests..."
	$(PERL) test_script.t

# --- Manual Run Targets ---
.PHONY: run run-python run-perl

run: run-python run-perl

run-python:
	@echo "🚀 Running Python with $(INPUT) and count=$(COUNT)..."
	$(PYTHON) u21528790.py $(INPUT) $(COUNT)

run-perl:
	@echo "🚀 Running Perl with $(INPUT) and count=$(COUNT)..."
	$(PERL) u21528790.pl $(INPUT) $(COUNT)

# --- Cleanup ---
.PHONY: clean
clean:
	rm -f input.txt

