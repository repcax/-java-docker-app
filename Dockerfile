# Usamos la imagen base oficial de Java con JDK 17
FROM openjdk:17-jdk-slim

# Creamos un directorio dentro del contenedor para la app
WORKDIR /app

# Copiamos el archivo JAR compilado al contenedor
COPY target/java-docker-app-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar


# Este comando será ejecutado al iniciar el contenedor
CMD ["java", "-jar", "app.jar"]
