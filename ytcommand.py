#!/usr/bin/python3

from pytube import YouTube
from sys import argv

link = argv[1]
fn = argv[2] + 'p'

yt = YouTube(link)
print("Title : ", yt.title)
print("Author: ", yt.author)

try:
    if fn == 'mp3p':
        print("Downloading...")
        yt.streams.filter(abr="160kbps", progressive=False).first().download(filename=yt.title + ".mp3")
        print("Audio successfullly downloaded.")

    elif fn == 'maxp':
        print("Downloading...")
        yt.streams.get_highest_resolution().download()
        print("Video successfullly downloaded.")

    elif fn == '480p':
        print("Video 480p Missing sound")
    else :
        print("Downloading...")
        yt.streams.filter(res=fn).first().download()
        print("Video successfullly downloaded.")
except:
    print("Error Pls > URL [mp3 360 720 1080 max]")
