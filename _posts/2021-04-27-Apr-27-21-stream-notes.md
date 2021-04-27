---
title: "04/27/2021 Livestream notes"
excerpt: "Turns out reading the documentation carefully can take you a long way in this world"
---

## Mantra

(a small idea to guide the day's work)

The master has had more failures than the novice has even attempted.

## Plan
(what do I plan to do)
- Get back into building [Mail File](https://startupinamonth.net/mailfile-announcement/)
- Get the DB up and running (Datomic)
- Maybe start parsing dummy emails
  - Parse body of email by newline
  - Transact those parsed lines as individual entities to transact into DB

## What I got done
(plan != reality)

- We finally got Datomic up and running! Turns out reading the documentation carefully can take you a long way in this world 👍
- We added a route for saving a new URL from an email
- We wrote:
  - specs for a "saved item" Datomic entity and a "link" Datomic entity
  - A function to save a new url
- And finally, we hooked up the API to submit a new URL via POST and save it in the DB! 

## For next time

- Hopefully get AWS SES up and running so we can test these with actual emails
- Expand functionality beyond just URLS, like quotes or other random pieces of text

## Links

(things referenced mid-stream)

- [Learn Datalog Today, excellent for learning Datalog syntax](www.learndatalogtoday.org/)

## Stream Video

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/hqwSim1fVx8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>