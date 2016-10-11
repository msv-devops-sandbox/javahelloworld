FROM java:7 

WORKDIR /tmp/
COPY src /tmp/src/

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
