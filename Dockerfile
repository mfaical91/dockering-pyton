# Utiliser une image Python officielle comme base
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY app/ /app

# Installer les dépendances Python
RUN pip install --no-cache-dir flask

# Exposer le port sur lequel l'application écoute
EXPOSE 5000

# Définir la commande pour lancer l'application
CMD ["python", "app.py"]
