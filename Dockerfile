FROM oraclelinux:8.4 
LABEL name=aman
RUN dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 maven git  -y 
RUN mkdir /aman-project
WORKDIR /aman-project
RUN git clone https://github.com/akkasot4u/java-springboot.git
WORKDIR java-springboot
RUN mvn clean package
