FROM debian:stretch
MAINTAINER Gump Yang <yangchengwork@gmail.com>

RUN apt-get update \
	&& apt-get install -y \
		apt-utils \
		wget \
		unzip \
		openjdk-8-jre \
		xvfb \
        xz-utils \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

ENV ARDUINO_IDE_VERSION 1.8.8
RUN (wget -q -O- https://downloads.arduino.cc/arduino-${ARDUINO_IDE_VERSION}-linux64.tar.xz \
	| tar xJC /usr/local/share \
	&& ln -s /usr/local/share/arduino-${ARDUINO_IDE_VERSION} /usr/local/share/arduino \
	&& ln -s /usr/local/share/arduino-${ARDUINO_IDE_VERSION}/arduino /usr/local/bin/arduino)

RUN (wget https://codeload.github.com/rogerclarkmelbourne/Arduino_STM32/zip/master \
	&& unzip master.zip \
	&& mv Arduino_STM32-master /usr/local/share/arduino/hardware/Arduino_STM32)

CMD ["/bin/bash"]
