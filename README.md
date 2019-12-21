[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)
[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://GitHub.com/Naereen/ama)
[![GitHub forks](https://img.shields.io/github/forks/saswatamcode/simpleIOT.svg?style=social&label=Fork&maxAge=2592000)](https://GitHub.com/saswatamcode/simpleIOT/network/)
[![GitHub stars](https://img.shields.io/github/stars/saswatamcode/simpleIOT.svg?style=social&label=Star&maxAge=2592000)](https://GitHub.com/saswatamcode/simpleIOT/stargazers/)
[![GitHub issues](https://img.shields.io/github/issues/saswatamcode/simpleIOT.svg)](https://GitHub.com/saswatamcode/simpleIOT/issues/)
[![Open Source Love svg1](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)
[![Badge w/ Platform](https://cocoapod-badges.herokuapp.com/p/NSStringMask/badge.svg)](https://cocoadocs.org/docsets/NSStringMask)


# SimpleIOT
A simple internet of things application made using iOS and a Raspberry Pi. The application allows you to remotely turn an led on/off through the net. Uses Firebase

## To Run
- Visit Firebase's official website and go to console
- Create a new application and select iOS to setup this project and follow instructions
- Download the `GoogleService-Info.plist` and move it to the project directory
- Create a new realtime database with led as a child and an empty string as it's key
- Clone repo using Xcode Source Control
- Run app on preferred simulator
- Boot up Raspberry Pi 2/3/4
- Open the `led.py` file and update config object using your personal data available in `GoogleService-Info.plist`
- Connect an led to a ground port and GPIO18 port
- Open terminal/ssh and run the following:
`sudo su`
`pip3 install RPi.GPIO`
`pip3 install pyrebase`
`python3 led.py`

## Requirement
- iOS 13.x
- Xcode 11.x
- Raspberry Pi 2/3/4
- Python 3.x
- LED/Jumper wires/Breadboard/330ohm resistor

