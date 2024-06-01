Downloads a repository from GitHub, builds a Dockerfile located
in the root and then publishes it into Docker Hub.

First, build the builder with `docker build -t builder .`.

Second, run `docker run -it -v /var/run/docker.sock:/var/run/docker.sock builder someuser/some-app someuser/some-app`.

The console will then prompt for the Docker Hub username and password: enter them to finish.
