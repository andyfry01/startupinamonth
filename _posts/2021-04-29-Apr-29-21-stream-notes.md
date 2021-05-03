---
title: "04/29/2021 Livestream notes"
excerpt: ""
---

## Mantra

(a small idea to guide the day's work)

Why so serious? 

## Plan
(what do I plan to do)
- Figure out weird data stuff when POSTing email to backend server from AWS 🤷‍♂️
- Once we can get this thing into a proper JSON object, we can then: 
  - Parse the object
  - Get the email data (mainly subject and body)
  - Save the email in the DB
  - And then the core feature is more or less "done" (huge asterisk)

## What I got done
(plan != reality)

- Found a library to parse RFC 5322 messages into Clojure maps!
- Debugged our POST body woes: turns out Reitit uses a totally different middleware scheme than Compojure (big point in favor of "sticking with what you know" when it comes to your tools 😰)
- ALMOST got to the point of grabbing subject and body of the email for storage in DB!

## For next time

- 

## Links

(things referenced mid-stream)

- [What is Startup in a Month?](https://startupinamonth.net/what-is-startup-in-a-month/)
- [What is Mail File? Find out here!](https://startupinamonth.net/mailfile-announcement/)
- [RFC 5322 email message spec. We've struck internet bedrock ⛏](https://www.ietf.org/rfc/rfc5322.txt)

## Stream Video