# Docker container for Arduino development

This container provides an installation of the Arduino.cc application and a virtual X11 server.

It is designed for use in a CI environment, but can be used wherever the Arduino toolchain is needed.

这是在[docker-arduino](https://www.github.com/slepp/docker-arduino)基础上进行修改
目的是加入[STM32duino](http://wiki.stm32duino.com)的支持