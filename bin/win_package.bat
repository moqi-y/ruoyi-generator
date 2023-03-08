@echo off

mvn clean package -Dmaven.test.skip=true -Pprod
