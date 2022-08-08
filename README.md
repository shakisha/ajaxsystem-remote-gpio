# ajaxsystem-remote-gpio
A project which use raspberry pi and an Ajax remote (space control) to arm-disarm your Ajax alarm based on your mobile geofence.

*PROJECT UNDER DEVELOPMENT, CONTRIBUTES ARE WELCOME!*

DESCRIPTION: Ajax alarms are very common in most of european countries. The ajax mobile iOS and Android app is giving the possibility to configure an option to notify arm/disarm push notificacion when you are leaving the configured geofence. 

The trouble is that that one is only an alert and there is no way to setup an action like "when i'm near home, disarm my alarm" or "when no one of my family is inside the home, arm the alarm".

The ajax community is claiming that this is "graded alarms that meet international security standards. They are not going to compromise those hard to achieve certifications to cripple their alarms, for installers and clients who do not appear to understand fundamental security concepts" but *i think that is a lot more unsecure to forget to arm own alarm and keep your home unsecure* so i wanted to create this project to solve this issue.

The trouble is that ajax alarm is a very closed source-api and everything else. No integrations, neither with apple homekit, alexa, google home, NOTHING.

My idea was inspired by another project which i followed on https://github.com/romor/blind-control so the idea is to use the GPIO interface of a Raspberry PI to manually press arm or disarm on the remote and connect some module that will listen to iOS or Android geolocation (or remote call).


08/08/2022 - I have accomplished the task. 

First of all you have to solder arm and disarm button from a spacecontrol, and plug it on raspberry gpio 17 and 27.
Then you can remove spacecontrol battery and solder + and - and connect to 3,3v and gnd of raspberry.

The arm script will be like this: 

#!/usr/bin/python

import RPi.GPIO as GPIO            # import RPi.GPIO module
from time import sleep             # lets us have a delay
GPIO.setmode(GPIO.BCM)             # choose BCM or BOARD
GPIO.setup(17, GPIO.OUT)           # set GPIO24 as an output 

try:
        GPIO.output(17, 1)         # set GPIO24 to 1/GPIO.HIGH/True
        sleep(0.5)                 # wait half a second
        GPIO.output(17, 0)         # set GPIO24 to 0/GPIO.LOW/False
        sleep(0.5)                 # wait half a second

finally:
    GPIO.cleanup()                 # resets all GPIO ports used by this program


and the disarm script like this: 

#!/usr/bin/python

import RPi.GPIO as GPIO            # import RPi.GPIO module
from time import sleep             # lets us have a delay
GPIO.setmode(GPIO.BCM)             # choose BCM or BOARD
GPIO.setup(27, GPIO.OUT)           # set GPIO24 as an output 

try:
        GPIO.output(27, 1)         # set GPIO24 to 1/GPIO.HIGH/True
        sleep(0.5)                 # wait half a second
        GPIO.output(27, 0)         # set GPIO24 to 0/GPIO.LOW/False
        sleep(0.5)                 # wait half a second

finally:
    GPIO.cleanup()                 # resets all GPIO ports used by this program

- 

Then you can implement your favourite presence detection system to arm when nobody is at home. 
In my scenario i'm not using disarming, only arming.

All kinda of contribution are welcome!
