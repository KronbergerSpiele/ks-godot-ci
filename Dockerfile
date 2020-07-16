FROM barichello/godot-ci:mono-latest
RUN echo "deb http://deb.debian.org/debian stretch-backports main" >> /etc/apt/sources.list.d/sources.list && \
    apt-get update && \
    apt-get install -y -t stretch-backports git