#FROM barichello/godot-ci:mono-3.3.2
FROM barichello/godot-ci:mono-latest
RUN echo "deb http://deb.debian.org/debian stretch-backports main" >> /etc/apt/sources.list.d/sources.list && \
    apt-get update && \
    apt-get install -y -t stretch-backports git apt-transport-https
RUN butler upgrade
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb 
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get install -y dotnet-sdk-5.0

ADD ./editor_settings-3.tres ~/.config/godot/
