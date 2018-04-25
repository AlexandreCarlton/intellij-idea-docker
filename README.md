# IntelliJ Docker

[![Build Status](https://travis-ci.org/AlexandreCarlton/intellij-idea-docker.svg?branch=master)](https://travis-ci.org/AlexandreCarlton/intellij-idea-docker)

A Docker image to fire up IntelliJ IDEA.

The intended usage of this is to test index migration, where I can compile the
indices within the container and test it on my local workspace to potentially
save an hour of indexing for everyone else.

Stretch goals:
 - Install plugins (we could just map in the configuration directory, or make
   it a persistent volume).
 - Allow configuration for different platforms (clion, pycharm, etc).
