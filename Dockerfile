#Linux image that we are going to use
FROM alpine
WORKDIR /root/hello
COPY HelloMelb.java /root/hello

# Install JDK
RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

# Compile our HelloMelbourne program
RUN javac HelloMelb.java

#Entrypoint
ENTRYPOINT java HelloMelb
