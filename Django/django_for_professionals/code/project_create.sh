#!/bin/bash
###  Project settings ###
project_dir_name="book"
project_name="bookstore"
current_dir=`pwd`
project_dir="$current_dir/$project_dir_name"
##########################

echo "Create Django project directory"
echo "Project name: $project_name"
echo "Project directory：$project_dir"

if [ ! -d $project_dir ]
then
  mkdir -p $project_dir
fi

cd $project_dir

echo "Install django==3.0.1 and psycopg==2.8.4"
pipenv install django==3.0.1 psycopg2-binary==2.8.4


echo "Create Docker environment"
touch Dockerfile
touch docker-compose.yml

cat << EOF > ${project_dir}/Dockerfile
FROM python:3.7

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

WORKDIR /code

COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

COPY . /code/
EOF

cat << EOF > ${project_dir}/docker-compose.yml
version: '3.7'

services:
  web:
    build: .
    command: python /code/manage.py runserver 0.0.0.0:8000
    volumes:
      - .:/code
    ports:
      - 8000:8000
    depends_on:
      - db

  db:
    image: postgres:11
    volumes:
      - postgres_data:/var/lib/postgresql/data/
    environment:
      - "POSTGRES_HOST_AUTH_METHOD=trust"

volumes:
  postgres_data:
EOF

docker-compose up -d --build

cat << EOF


Create django project
Execute following command.
***********************************
django-admin startproject ${project_name}_project .
***********************************


Edit ${project_name}_project/settings.py
EOF

echo ""
echo "***********************************"
echo ""

cat << EOF
DATABASES = {
  'default': {
    'ENGINE': 'django.db.backends.postgresql',
    'NAME': 'postgres',
    'USER': 'postgres',
    'PASSWORD': 'postgres',
    'HOST': 'db',
    'PORT': 5432
  }
}
EOF

echo ""
echo "************************************"
echo ""

cat << EOF
When you have finished installing your django project,
exit your pipenv.
and execute following command.

************************************
exit
cd $project_dir
docker-compose down
docker-compose up -d --build

and then, access http://127.0.0.1:8000/
EOF

pipenv shell
