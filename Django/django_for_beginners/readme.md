

To install Pipenv, type the following command.  
```
pip3 install pipenv
```

Install Django
```
mkdir django
cd django

pipenv install django==3.0
```

there are two new files: Pipfile and Pipfile.lock.

we need for a new virtual environment but we have not activated it yet.

To activate this project's virtualenv, run the following:
```
pipenv shell
```

Create a new Django project called test_project with the following command.

```
django-admin startproject test_project .
```