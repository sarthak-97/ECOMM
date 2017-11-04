# ECOMM


One Paragraph of project description goes here

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

ORACLE 11G database

SPRING 4

TOMCAT 8.5

MAVEN 3.0



### Installing

First Clone this repository and import in your Eclipse.

Then add your Oracle Database Password in Spring-dispatcher-servlet.xml

Then From Oracle Application Express Create a New Workspace named as VardanApp

STEPS TO INSTALL OJDBC DRIVER MANUALLY IN MAVEN

Visit Oracle website to get the Oracle JDBC driver – ojdbc6.jar

```
$ mvn install:install-file -Dfile={Path/to/your/ojdbc6.jar}
      -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=11.2.0 -Dpackaging=jar
```

```
$ mvn install:install-file -Dfile=C:\\OracleJDBC\\ojdbc6.jar-DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=11.1.0 -Dpackaging=jar

```

Then Build The Project and Run at Server



