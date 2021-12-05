# Software Construction Project

## Authors:

- Dinesh Nekkanti
- Alex Milender
- James O'Donnell

## Set up
### Requirements: 
- J2EE SDK
- Docker & Docker Compose
- Gradle

### Running
Before you can test or debug the project, you need to start the MySql container

First run ->
``docker-compose up --build``

Subsequent runs ->
``docker-compose up -d``

Now you should be able to hit the "Debug" button on your IDE and run the application

### Testing
We have added an Integrated Testing environment as our major contribution to this project.

This allows us to test the DAO logic behind the JSPs for fitness, validation, and SQL injection attacks.

