### How to Run
```bash
python3 script.py input.txt 1

perl test_script.t
```

### How to run tests
```bash
python3 -m unittest test_script.py

perl test_script.t
```

### How to use Makefile

#### Run All Tests
```bash
make test
```

#### Run Only Python Tests
```bash
make test-python
```
#### Run Only Perl Tests
```bash
make test-perl
```
#### Run both manual scripts
```bash
make run INPUT=input.txt COUNT=2
```

#### Run python manual scripts
```bash
make run-python INPUT=input.txt COUNT=2
```
#### Run perl manual scripts
```bash
make run-perl INPUT=input.txt COUNT=2
```

#### Clean 
```bash
make clean
```


