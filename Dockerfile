# Étape 1: Utilisation d'une image de base (JDK 17)
FROM openjdk:17-jdk-slim

# Étape 2: Définir un répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3: Copier le fichier JAR de l'application dans le conteneur
# Le fichier JAR est généré après la compilation avec Gradle ou Maven
COPY build/libs/inventory-management-0.0.1-SNAPSHOT.jar app.jar

# Étape 4: Exposer le port 8083 pour accéder à l'application
EXPOSE 8083

# Étape 5: Commande pour démarrer l'application dans le conteneur
ENTRYPOINT ["java", "-jar", "app.jar"]
