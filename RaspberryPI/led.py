import RPi.GPIO as GPIO
import time
from pyrebase import pyrebase
config = {
    "apiKey":"[YOUR_API_KEY]",
    "authDomain":"https://[YOUR_PROJECT_ID].firebaseapp.com",
    "databaseURL":"https://[YOUR_PROJECT_ID].firebaseio.com",
    "storageBucket":"https://[YOUR_PROJECT_ID].appspot.com"
    }
firebase = pyrebase.initialize_app(config)

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(18,GPIO.OUT)
db = firebase.database()

while(True):
    led = db.child("led").get()
    for user in led.each():
        if(user.val() == "OFF"):
            GPIO.output(18, False)
        else:
            GPIO.output(18, True)
        time.sleep(0.1)
