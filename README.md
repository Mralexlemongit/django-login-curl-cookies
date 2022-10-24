# django-login-curl-cookies
Django minimalistic proyect to login in a page via curl.

For this proyect you just need to do the basic django setup:

``` bash
$ python -m venv venv
...
$ .\venv\script\activate
(venv) $ pip install -r requiremets.txt
...
(venv) $ python manage.py migrate
...
(venv) $ python manage.py runserver
```

Next, run the script to test the login and index page:

``` bash
$ ./authenticate.sh
```

This proyect is full based in the [stackoverflow](https://stackoverflow.com/) question "[How to cURL an Authenticated Django App?](https://stackoverflow.com/questions/21306515/how-to-curl-an-authenticated-django-app)" thinked for Django 4.1.2
