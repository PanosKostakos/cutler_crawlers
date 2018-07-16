from __future__ import print_function

import smtplib

import time
import tweepy
import json
from pymongo import MongoClient

MONGO_HOST = 'mongodb://localhost'  # assuming you have mongoDB installed locally



CONSUMER_KEY = ""
CONSUMER_SECRET = ""
ACCESS_TOKEN = ""
ACCESS_TOKEN_SECRET = ""

gmail_user = "youreamil@gmail.com"  #Your email address
gmail_pwd = "password" # Your  email password
FROM = "yourmail@gmail.com" #Your email address
TO = ['yourmail@gmail.com', 'moremail@gmail.com']  # must be a list



def sendMail(SUBJECT, TEXT):
    # Prepare actual message
    message = """\From: %s\nTo: %s\nSubject: %s\n\n%s
    """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
    try:

        server = smtplib.SMTP("smtp.gmail.com", 587)  # or port 465 doesn't seem to work!
        server.ehlo()
        server.starttls()
        server.login(gmail_user, gmail_pwd)
        server.sendmail(FROM, TO, message)
        # server.quit()
        server.close()
        print('successfully sent the mail')
    except:
        print("failed to send mail")


class StreamListener(tweepy.StreamListener):
    # This is a class provided by tweepy to access the Twitter Streaming API.

    def on_connect(self):
        # Called initially to connect to the Streaming API
        print("You are now connected to the streaming API.")

    def on_error(self, status_code):
        # On error - if an error occurs, display the error / status code
        print('An Error has occured: ' + repr(status_code))
        sendMail("WHAT AGAIN?", "OTHER EXCEPTION")  # Sends mail in case of error
        return False

    def on_data(self, data):
        # This is the meat of the script...it connects to your mongoDB and stores the tweet
        try:
            client = MongoClient(MONGO_HOST)

            # Use CHICAGO database. If it doesn't exist, it will be created.
            db = client.CHICAGO

            # Decode the JSON from Twitter
            datajson = json.loads(data)

            # grab the 'created_at' data from the Tweet to use for display
            created_at = datajson['created_at']

            # print out a message to the screen that we have collected a tweet
            print("Tweet collected at " + str(created_at))

            # insert the data into the mongoDB into a collection called twitter_search
            # if twitter_search doesn't exist, it will be created.
            db.CHICAGO.insert(datajson)
        except Exception as e:
            print(e)
            sendMail('DATABASE PROBLEM', " Database Exception")  # Sends email in case of database failure


while True:
    try:
        auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
        auth.set_access_token(ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
        # Set up the listener. The 'wait_on_rate_limit=True' is needed to help with Twitter API rate limiting.
        listener = StreamListener(api=tweepy.API(wait_on_rate_limit=True))
        streamer = tweepy.Stream(auth=auth, listener=listener)
        # print("Tracking: " + str(WORDS))
        print("Tracking tweets from Chicago")

        GEOBOX_CHICAGO = [-87.9671519386,41.62241735,-87.3972361672,42.036640212] # here you add your geobox
        streamer.filter(locations=GEOBOX_CHICAGO)
    # Stops the program when you type Ctrl+C
    except KeyboardInterrupt:
        print('GOODBYE!!!!!!!!!!!!')
        break
    # Restarts the programme in case of exception  waiting 5sec for every restart
    except Exception as e:
        print(e)
        time.sleep(10)
        continue

