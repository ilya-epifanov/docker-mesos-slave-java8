FROM mesosphere/mesos-slave:0.23.0-1.0.ubuntu1404

ADD vivid.list /etc/apt/sources.list.d/vivid.list
ADD vivid-preferences /etc/apt/preferences.d/vivid-preferences

RUN apt-get update \
 && apt-get install -y --no-install-recommends openjdk-8-jre-headless \
 && apt-get install -y libatlas3-base libopenblas-base \
 && apt-get clean -y \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
