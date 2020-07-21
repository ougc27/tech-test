Technical Test
==============

This repository will be used by applicants that wants to cooperate with Morwi Encoders, to upload the results of the technical evaluation, through a pull request (PR)

Make a fork of this repository with your Github account, and complete the problems in the Technical test.

[Technical test](https://docs.google.com/forms/d/1lGuZt6POQLOV4AwwUNt9OiHZ6jZusCn1IdnFdnwH_uU/viewform)

NOTE: Your PR will be tested by travis using python unittest, flake8 and pylint.

You can install with next commands:

```bash
# apt-get install pylint python-flake8
```
You can execute test locally with next commands:
```bash
cd tech-test/
flake8 . --exclude=__init__.py && echo $?  # python guidelines
pylint --rcfile=.pylint.cfg *.py && echo $?  # python guidelines
python2.7 .all_unittest.py && echo $?  # Execute unittest for python
```
If exit with 0 (zero) each command and don't show errors your code is very good!

NOTE2: Your PR will test postgres script too.
You can execute this test locally with next commands:
```bash
createdb employee_employee -U postgres # create database (First remove if exists with "dropdb employee_employee")
cd tech-test/
PGPORT=5432 psql -d employee_employee -U postgres -h localhost -a -f ./employee.sql  # Execute sql file.
PGHOST=localhost PGPORT=5432 PG_USER='postgres' python ./.psql_unittest.py && echo $?  # Execute unittest for postgresql.
```
If exit with 0 (zero) last command and don't show errors your code is very good!
