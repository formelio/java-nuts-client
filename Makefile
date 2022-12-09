.PHONY: all

all: regenerate build-install

regenerate:
	mvn clean generate-sources

build-install:
	cd generated && mvn install

clean:
	mvn clean

deploy:
	mvn -f generated/pom.xml deploy -DaltDeploymentRepository=github::default::https://maven.pkg.github.com/formelio/java-nuts-client

version:
	mvn -f generated/pom.xml versions:set
