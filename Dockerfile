FROM bellsoft/liberica-openjdk-debian

RUN mkdir /app
WORKDIR /app

COPY . .

RUN ./gradlew build

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "build/libs/makeit-0.0.1.jar"]
