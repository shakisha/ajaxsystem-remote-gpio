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
