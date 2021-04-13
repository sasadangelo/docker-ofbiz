FROM ubuntu:16.04

RUN apt-get update; apt install -y openjdk-8-jdk openjdk-8-jre wget unzip; \
	wget https://archive.apache.org/dist/ofbiz/apache-ofbiz-16.11.05.zip; \
	unzip apache-ofbiz-16.11.05.zip; cd apache-ofbiz-16.11.05; \
	./gradlew cleanAll loadDefault; \
	./gradlew "ofbiz --load-data readers=seed"; \
	./gradlew "ofbiz --load-data readers=seed,seed-initial,ext"

EXPOSE 8443

WORKDIR /apache-ofbiz-16.11.05

CMD ./gradlew ofbiz
