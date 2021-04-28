---
title: "04/28/2021 Livestream notes"
excerpt: "after that we will have our email contents and can parse/save them accordingly"

---

## Mantra

(a small idea to guide the day's work)

Get back on the horse 🐎

## Plan

(what do I plan to do)

- Amazon SES is working! So we should figure out how to
  - Send emails (done this before, not hard 💪)
  - Receive emails (uh ...🤔)
- If we can figure out how to receive emails, then ...
  - Take our parsing/DB saving code from yesterday and hook that up to email receiving flow

## What I got done

(plan != reality)

- We can now send emails from Mail File! Which is great. 
- We got most of the way towards **receiving** emails sent **to** Mail File as well: 
  - We wrote an SES receipt rule which invokes an AWS Lambda function when an email is received
  - That AWS Lambda function sends a POST to the Mail File server which we've written to receive emails

Theoretically that would be enough: SES would send the subject and body of the email along in the data that it sends to Lambda, but evidently an intermediary step is required along the way: either invoking an SNS event or saving the email to S3 first. Seems like an unneccessary middle step to this guy, but that's how it is 🤷‍♂️

## For next time

- Set up either SNS or S3 as the middle step between SES and Lambda, and after that we will have our email contents and can parse/save them accordingly 🎉

## Links

(things referenced mid-stream)

- [How to Run Your Own Email Server (and all the reasons why you DON'T want to do this too)](https://arstechnica.com/information-technology/2014/02/how-to-run-your-own-e-mail-server-with-your-own-domain-part-1/)
- [LocalTunnel, used to make a publicly available URL for my localhost app. Expose yourself to the world!](https://theboroer.github.io/localtunnel-www/)
- [RESTMan: a Postman-like browser extension for making REST calls, v. useful](https://chrome.google.com/webstore/detail/restman/ihgpcfpkpmdcghlnaofdmjkoemnlijdi?hl=en)
- [Wrap Node.JS https module in a promise](https://stackoverflow.com/questions/38533580/nodejs-how-to-promisify-http-request-reject-got-called-two-times/38543075)

## Stream Video

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/XYTSPZVe5Vo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>