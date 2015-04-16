# medock

Experimenting with [Docker](http://www.docker.com) and [Google Cloud](https://cloud.google.com/) w/ simple [Ruby](http://ruby-lang.org) HTTP server.

## Local development

    docker build -t medock-image .    # Build image from current Dockerfile
    docker run -i -t -P medock-image  # In foreground
    docker run -d -P medock-image     # As daemon

- [Oto Brglez](https://github.com/otobrglez)


