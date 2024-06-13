# install java
  sudo apt install default-jre default-jdk maven

# java run *.jar
  java -jar *.jar
  
# maven create project
  mvn archetype:generate -DgroupId=com.example -DartifactId=[项目名] -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

# maven compile
  mvn compile

# maven compile jar
  mvn clean package

# maven add jar package in pom.xml
  <dependencies>
    <dependency>
        <groupId>com.jcraft</groupId>
        <artifactId>jsch</artifactId>
        <version>0.1.55</version> <!-- 替换为你需要的版本 -->
    </dependency>
</dependencies>

# maven add java main class
  <mainClass>com.example.MainClass</mainClass>

# maven add java version
  
