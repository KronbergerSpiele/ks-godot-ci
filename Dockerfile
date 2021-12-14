FROM barichello/godot-ci:3.4

RUN wget -qO- https://deb.nodesource.com/setup_16.x | bash - &&\
    #command above is running update for us
    apt-get install -y git apt-transport-https nodejs &&\
    butler upgrade