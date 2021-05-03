---
title: "05/03/2021 Livestream notes"
excerpt: "We made our first complex-ish Datomic write function!"
---

## Mantra

(a small idea to guide the day's work)

Everything takes longer than you think it will.

## Plan
(what do I plan to do)

Now that we can get the relevant, plain text content of our emails without all the crazy RFC5322 stuff:

- Save the email to the DB
  - First real-world foray into Datomic 😳
  - Still need to figure out DB schema
- If we get that far, start building the frontend

## What I got done
(plan != reality)

- After some trials and tribulations, I finally figured out why my JSON was not showing up as JSON in the body of my POST requests: I needed a header in the request that specified that the request contains JSON 🙄
- HOWEVER, we did complete the circle of sending an email, parsing it, and saving it in the backend! Huge step 👍
- We also refactored from Reitit to Compojure: more docs, more examples, easier to work with altogether. And perhaps most significantly: I have a better feel for how to work with it than Reitit. 
- We made our first complex-ish Datomic write function: it saves one or many new entities in a DB, grabs their entity ids, and associates them with an existing user's "saved-items" attribute. Pretty complicated stuff, but I'll get more comfortable with it as I go along, and the query power of Datalog/the data model of Datomic will hopefully make up for the fact that writing to the DB can be a little bit complicated. 

## For next time

- Start in on the frontend for the app: now that we can save content from our emails, we should work on viewing it next. 

## Links

(things referenced mid-stream)

- [What is Startup in a Month?](https://startupinamonth.net/what-is-startup-in-a-month/)
- [What am I building this month?](https://startupinamonth.net/mailfile-announcement/)
- [Come hang out on Discord!](https://startupinamonth.net/discord/)
- [Datomic on-prem docs: it's not just an AWS database after all](https://www.datomic.com/on-prem-documentation.html)
- [Learn Datalog Today: awesome resource for learning Datalog syntax](http://www.learndatalogtoday.org/)

## Stream Video

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/kPA_oAOc430" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>