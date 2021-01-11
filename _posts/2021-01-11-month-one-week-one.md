[Watch me program live every morning at 9:30 EST!](https://www.twitch.tv/a_fry_)

[Check out past streams on YouTube!](https://www.youtube.com/channel/UCkDn7Pnyeq3SJha1x3GXTkQ)

Well well well, week one and done everybody. Here is the summary of how we did in Week One of the Startup in a Month project. This is something I'll be doing for every month of 2021: building, promoting, and releasing a whole startup from start to finish. 

This first month's startup is a multiplayer online game called Plotters. The premise is that all of the players are presented with an old movie title that nobody's ever heard of. You'll have a minute or two to write down a plot summary for the movie, and when all the players are finished, the fake plots will be mixed in with the **real** plot of the game, and you vote on which plot you think is the real plot. 

It's a fun game that I've played a few times with friends on pen and paper, is relatively simple in scope, and is going to be a lot of fun to build! I figure it's a good choice for a first startup, especially as I invent and refine my process along the way and get a grip on what it's going to be like to do this for a whole year. 

## A Failure

I think I'd like to lead with a failure I experienced for each week. This weird, modern world is great at showcasing a success, but behind every success lies ten failures. So I'm going to buck that trend and put my failures up front for a change to show you all that stuff is hard, and it takes a lot of trial and error to get it right in the end. 

Chief among my failures this week was not starting sooner with this project! I've been thinking about doing something like this on and off for several years now, and yet it took a long time to actually pull the trigger on starting. Immediately before starting up this project I actually got fired from another startup I had recently signed on with, and that sudden loss of job presented me with the opportunity to say "screw it" and dive in. 

Before, when I was gainfully employed, I had this whole idea of doing this the "responsible way": keeping the full-time job, doing this startup-in-a-month thing in my spare time, and eventually switching to a full-time schedule when one of the startups started to make money. And while you could argue that that would have been a better idea, it feels really good to follow the YOLO path. 

I fully recognize that I am mega-fortunate and privileged in that my financial situation makes this possible in the first place, but if you can, why wouldn't you? I could have done this for a long time, why didn't I exactly? We'll never know, but I'm glad I'm doing it now. 

## Choosing Clojure

One huge, fairly speculative move I'm making is that I'm building all of these apps in a language that I've never worked in before: the [Clojure programming language](https://clojure.org/). One could argue that this is a really dumb move to make. Any random sampling of internet posts will always push you to write a program in "the language that you already know" by virtue of the fact that you're comfortable in it and won't need to spend a lot of upfront time learning the ropes and making all of the newbie mistakes. This is a business venture damn it! We can't be pursuing flights of programming fancy when we've got perfectly good JavaScript that can do the job just as well! JS and Clojure are both [Turing complete](https://en.wikipedia.org/wiki/Turing_completeness) languages, what's the issue then? 

Well, the issue is that JavaScript is painful and unproductive to work with in many ways, much though it pains me to write those words. I've got a Stockholm Syndrome kind of relationship with my beloved JavaScript. My first language. But regardless of these feelings, one must admit: it's slow, it enables many styles of programming but enforces no guardrails on what you write, and it carries a lot of baggage from when it was written (the mid-90s) that makes it unwieldy to use for modern apps. 

Knowing this, I opted for Clojure, which has a ton of things to commend it, namely its functional purity, sparse syntax, huge library of built-in functions, and most significantly, its "interop" with both Java and JavaScript, meaning that you can run Clojure code within both of those programming languages, and take advantage of open source libraries written in those languages. I'm betting that all of these advantages and more are going to make me more productive than I could be with JavaScript in the long run, and will let me avoid whole categories of bugs and problems which would be very easy to get tripped up by in JS. 

How long this "long run" payoff will be is another question entirely, but I'm expecting it to come pretty quickly.

## Promotion

Walking into the project, I knew that I needed some way of promoting it, and preferably a way to promote it before the thing is even built. Any kind of venture – and especially a venture in the age of the social internet, where attention is money – is going to consist equally of building the Thing and getting people to notice that the Thing is out there in the first place. So my first week has consisted of a lot of social media outreach. 

My first stop was the [Clojurians Slack group](https://clojurians.slack.com). I'm building each of the 12 startups in the [Clojure programming language](https://clojure.org/), which has a somewhat small community compared to a super ubiquitous programming language like JavaScript or Python. In addition, this is my first time working in Clojure period (although I do have some experience with Clojure-ish ideas by way of the [Ramda JavasScript library](https://ramdajs.com/)), so I figured that a small community would really dig to see a new member going through the steps of learning the language and using it to build a product from scratch. And I was right! The Clojurians Slack channel (in addition to the [Clojure subreddit](https://old.reddit.com/r/Clojure/)) has been where I've gotten most of my traction from. I think I'll make a lot of good connections there as I get deeper into the project. 

My second stop was Reddit itself, but this was not as successful. Reddit is a super popular website, and as such is the target of a lot of spam from other people like ... uh ... me, who have something to promote and are looking for a place to post links and share updates. Most of the more popular subreddits have anti-spam filters and moderation rules which are designed to prevent people exactly in my position from pumping the site full of a bunch of self-promotional hoo-hah. Which I suppose is necessary and good in the end, but if I want to use Reddit as a promotional channel, I'll need to put some more work into growing my account and thereby getting in underneath the radar of zealous moderators and anti-spam bots.

Aside for that, I've been getting out the word to family and friends by email, which has resulted in some really kind words of encouragement! I think people like to hear when you're striving for something, or at least the people I associate with do, so that's given me a lot of good spirit food. 

## Unexpected Benefits of Livestreaming

And finally, my third promotional channel has been livestreaming on Twitch and YouTube. One thing I did not expect was that streaming would be such a boost to my productivity and sense of well being. As I mentioned above, making a successful product is equal parts building and promoting, so I figured I may as well split the difference and get both done at the same time. 

And yet, there's a hidden cost in that strategy too, right? Programming is an activity that takes a lot of concentration even when things are going well. On an especially good day, when you're feeling rested and well fed, you can get into a flow state. The code runs beautifully out of your fingertips onto the screen and it all just works. On an average day, programming is like playing hide and seek in a huge dark room with big holes in the floor, and a bunch of furniture with sharp edges strewn haphazzardly between the holes. You're equipped with the smallest, crappiest flashlight ever, and you find your friend's hiding spot by shining your flashlight on one little nook at a time, constantly falling into the holes, endlessly banging your nose on the furniture, and scaring your friend half to death when you finally yank open the cupboard door, your face a bloody, dusty mess.

So anyway, figuring that I would probably experience a lot of average to sub-average days until I got comfortable with Clojure, I was not super keen on splitting my limited mental resources between putting on a gameshow host personality and while simultaneously performing the mentally demanding act of programming itself. I thought it would turn out to be a huge distraction, but it's actually turned out to be the total opposite. Being aware that I'm broadcasting the process to others has actually had the effect of keeping me on track and productive. Because I have an audience, I can't just push the eject button and flee to Reddit or YouTube when I get stuck on something: I need to stick with it, reason through it, and calmly pick apart the problem until I have a solution. 

Another effect that narrating the process out loud to my Twitch audience is that bugs are becoming easier to figure out too. I read about this recently in a [NY Times article on talking to yourself](https://www.nytimes.com/2017/06/08/smarter-living/benefits-of-talking-to-yourself-self-talk.html). When you speak things out loud, it takes the nebulous, half-formed thoughts in your head and gives them a concrete form. When you say things out loud – like actually out loud, not silently, not inside your head – it makes it easier to break down a big task into its tiny, bite-sized chunks. If you're having a thought which isn't quite complete, it's also an opportunity to hear that "incompleteness" in the words themselves and question the thought. 

And finally, it's been nice to have some people along for the ride. As COVID has reminded us, we are social creatures in the end, and it's going to feel so much better building these startups if I have some company. Doesn't even need to be in-person company either: just the knowledge that there are a handful of people out there who are watching along and sharing the experience with me through the ether has done wonders for my mood. 

So altogether the livestreaming has been a boon in many ways that I did not expect! I don't have much of an audience yet, but I think for a brand new streamer with super niche subject matter, I've made some excellent progress in this first week. 

## Looking Ahead

Looking ahead, I think I'm on a good track so far. The game is small-ish in scope, which I think will make it possible to actually finish the app AND learn how to play the startup-in-a-month game in general AND learn Clojure all at the same time. I often come back to the metaphor of a pie eating contest. The pie I have in front of me is a huge pie, no doubt. If you look at the pie too much, it's very easy to get freaked out by it and to doubt your ability to eat it. But you don't have to eat the whole pie, you just have to eat the piece in front of you. Take your eyes of the pie, focus on the slice on your plate, and before you know it you'll have finished. 

See you pie eaters next week!

\- Andy