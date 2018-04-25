# IntelliJ Docker

A Docker image to fire up IntelliJ IDEA.

The intended usage of this is to test index migration, where I can compile
and use it on another's so we don't wait 60 minutes for another re-index).

Stretch goals:
 - Install plugins (we could just map in the configuration directory, or make
   it a persistent volume).
 - Allow configuration for different platforms (clion, pycharm, etc).
