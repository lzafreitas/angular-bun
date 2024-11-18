## Building angular app inside bun image hangs

This repo has example code to reproduce an issue I am facing when trying to build an Angular 18 application inside a oven/bun:1.1.34 docker image

Instructions to reproduce:
  - Download the repo
  - run "docker compose up"

The Dockerfile being built used in the repo was just created to show a simple example of what is happening,
whenever I try to build an Angular application inside the docker Bun image it hangs (gets stuck) indefinitely.
This issue was first noticed when trying to run the angular tests with "ng test" in a CI/CD pipeline. 
After a lot of investigation I realised that the same problem occurs whenever trying to build the app from inside the container.
I have also tried staring from a Debian image and then installing Bun, the same issue occurred. 


