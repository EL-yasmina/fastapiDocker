# Utilisez l'image Python 3.9 comme image de base
FROM python:3.9
#je choisi un espace répertoire de travail
WORKDIR /code
#je copie le requirement de mon projet dans mon espace de travail sur mon conteneur
COPY ./requirements.txt /code/requirements.txt
#je lance l'installation des bibliothèque sur mon contenaire
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
#je copie le reste de mon projet (mon code) situé dans app
COPY ./app /code/app

#je spécifie la command par defaut pour lancé le conteneur
CMD ["fastapi","run", "app/main.py", "--port", "80"]
