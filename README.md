# Description
The Dockerfile can be used to build a Docker container that has a latex full installation within a Python dev container with the languages German and English.

The container created by this Dockerfile can also be used as a dev container. Latex documents can be compiled with the dev container. The Python environment allows the execution of pythontex.

# Build
```
docker build -t Python-Latex-Dev .
```