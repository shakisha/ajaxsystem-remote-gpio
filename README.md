# ajaxsystem-raspberry-geolocate
A project which use raspberry pi and an Ajax remote (space control) to arm-disarm your Ajax alarm based on your mobile geofence.

*PROJECT UNDER DEVELOPMENT, CONTRIBUTES ARE WELCOME!*

DESCRIPTION: Ajax alarms are very common in most of european countries. The ajax mobile iOS and Android app is giving the possibility to configure an option to notify arm/disarm push notificacion when you are leaving the configured geofence. 

The trouble is that that one is only an alert and there is no way to setup an action like "when i'm near home, disarm my alarm" or "when no one of my family is inside the home, arm the alarm".

The ajax community is claiming that this is "graded alarms that meet international security standards. They are not going to compromise those hard to achieve certifications to cripple their alarms, for installers and clients who do not appear to understand fundamental security concepts" but *i think that is a lot more unsecure to forget to arm own alarm and keep your home unsecure* so i wanted to create this project to solve this issue.

The trouble is that ajax alarm is a very closed source-api and everything else. No integrations, neither with apple homekit, alexa, google home, NOTHING.

My idea was inspired by another project which i followed on https://github.com/romor/blind-control so the idea is to use the GPIO interface of a Raspberry PI to manually press arm or disarm on the remote and connect some module that will listen to iOS or Android geolocation (or remote call).

