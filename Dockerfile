FROM alpine
RUN apk update && apk add openjdk8
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} calculatorbasic.jar
ENTRYPOINT ["java","-jar","calculatorbasic.jar"]

#

#
