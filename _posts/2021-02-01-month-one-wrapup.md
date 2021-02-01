---
title: "Month One Wrapup: Shoot and Miss"
excerpt: "If the sarcasm hasn't wilted your mind to ash already, I'll come out and state it plainly: here we are, at the end of Month One, and I stand before you empty handed. No landing page, no MVP product, absolutely nothing."
---

[Watch me program live every morning at 9:30 EST!](https://www.twitch.tv/a_fry_)

[Check out past streams on YouTube!](https://www.youtube.com/channel/UCkDn7Pnyeq3SJha1x3GXTkQ)

## Release day!

"Here we are ladies and gentlemen! It's D-Day, the final day of the first month of the Startup in a Month project, and I couldn't be more excited! Can you feel the electricity in the air?" yells the carnival barker to an enraptured audience. "Yes ma'am, you heard me right. This motley fool really did it! He bootstrapped from scratch a whole working multiplayer game using a programming language he's never used before! And in only four weeks!"

"Feast your eyes on this magnificent, splendorous feat of algebraic functional harmony! Listen to it purr, look on with amazement as it nimbly reacts to state changes across multiple connected clients! Look all you like ladies and gentlemen, and yes, it is only **$5** to play!" 

"Do I have any takers?"

If the sarcasm hasn't wilted your mind to ash already, I'll come out and state it plainly: here we are, at the end of Month One, and I stand before you empty handed. No landing page, no MVP product, absolutely nothing. I've got a domain name and an cobwebbed Linux droplet floating somewhere out there in the Digital Ocean, and the rest remains locked away on my hard disk. 

I don't think I even have a git commit hash to show for my efforts, nevermind a startup. In short: this first month was a complete, unmitigated failure. 

<img src="/assets/images/sad-walk.gif" style="width: 100%" alt="Websocket meme: What if every player has a complete copy of the state at all times, and all you need to do is choose when to show certain pieces to them">

Or was it? 

## Pivot

Right from the get-go, I was surprised by the reactions I got to the project announcement. Total strangers thought it was a hugely ambitious project, and wished me luck! A few of them even called me an inspiration. In my mind – which I confess has a habit of minimizing achievements – this was all flabbergasting. I'm just some wacky guy out there doing a wacky thing, what's all the fuss? I picked a modest project and generous timeframe (or so I thought), what's the big deal? 

In the end, those who called the project out for being super ambitious had it all right: the scope of this undertaking was indeed larger-than-expected. Too ambitious in fact. So large and ambitious that I didn't end up hitting my goal.

But I'm feeling good about it!

It would be very easy to frame this first month as a failure. If I'm gonna name this venture "Startup in a Month," then by God, I'd better have a startup by the end of each month. The point, after all, is to constrain my efforts and time into producing the best minimum viable product I can, and getting it out there as soon as I can so I can start to gauge whether it's fulfilling a need and what kinds of new features would bring it over the top. Can't do any of that without a product! 

If I'm viewing things through that lens, then yeah, this first month was a total wash. 

But there are different lenses out there, right? A concept you may be familiar with from the business world is "the pivot." A pivot happens when a business shifts its strategy based on the feedback it gets when the rubber meets the road. To paraphrase Moltke the Elder: "No plan survives first contact with the enemy." To quote Mike Tyson: "Everybody has a plan until they get punched in the mouth." We all scheme and plan in our heads before doing anything, and unsurprisingly, those plans often end up being fairly rose-tinted and not at all reflective of what actually happens. Hence: when fist meets mouth, you pivot.

Sometimes a pivot can be really dramatic: 

- YouTube for example was originally a [video dating website](https://www.theguardian.com/technology/2016/mar/16/youtube-past-video-dating-website),
- Before Twitter, [there was Odeo](https://en.wikipedia.org/wiki/Twitter#Creation_and_initial_reaction), a failed podcasting app,
- And my favorite example that I've shared on the stream numerous times: [Tailwind.css](https://tailwindcss.com/) was little more than an in-house utility library developed by the founders during their first failed business venture. In August of 2020 Tailwind UI crossed [two million dollars in revenue](https://adamwathan.me/tailwindcss-from-side-project-byproduct-to-multi-mullion-dollar-business/).

Pivots, in business as well as in life, can be like a "phoenix rising out of the ashes" moment. The tricky part, though, is that you've got to have the eyes to see a pivot when it's in front of you. lf you've fixed your eyes too firmly to one particular idea of success, then you might needlessly crash your ship into the rocks when your real destiny was right there, just a head-turn and a course correction away.  

So anyway, I'm not gonna argue necessarily that what I'm doing is a pivot in the above senses, but I think it's a good lens to view Month One through. My goal was to release something by the end of the month, but much like Adam at Tailwind, maybe this whole time I wasn't really building my first startup. Maybe what I was doing was building the **foundation** of my future startups. 

## So what did I get done?

Looking at things through that kind of lens – the one where, unbeknownst to me, I was secretly buildlng the foundation of future startups while attempting to build my first – let's make a checklist of what I got done. I:

- Sketched out a first draft of what my daily, weekly, and monthly working schedules are going to look like,
- Learned that a lot of people are interested in what I'm doing, and are eager to engage in the journey and help out! Which is really motivating and special,
- Tested whether Clojure is going to be a viable language for me to work in, and in the course of doing so:
  - I graduated from a place of "This looks like a cool language, could I really build something with it?" to "Yes! It is a lot harder than Javascript in a lot of ways, but makes a lot of things far simpler than they'd ever be with JS alone." 
  - I validated my theory that you can get a *ton* of work done with just a little bit of Clojure. Less code is almost always better than more code, and if I'm still trying to keep 11 plates spinning and producing value by the end of the year, I'll be more effective if I have less code to maintain. After all, I might not end up deriving my income from *only one* of these apps, it could be six of them. I am but one man, and this man doesn't want to babysit a half-dozen inscrutable garbage fires for the rest of his life. 
  - I discovered that developing in Clojure is a ton of fun! And damn it, if I'm not having fun, then what's the point of this weird, uncomfortable life?
- Built out several reusable time-saving tools, namely: 
  - A template for a product landing page
  - A template for future apps
  - A Vagrant box for local development and rapidly deploying applications on the cheap
- Nurtured numerous tremendous time-saving techniques, namely: 
  - REPL-driven development,
  - [Rich comment blocks](https://betweentwoparens.com/rich-comment-blocks#rich-comment), 
  - Selectively loading changed functions and variables into the REPL instead of reloading entire files or endlessly stopping/restarting a server when a change is made. This last one alone is going to be revolutionary for my workflow when I get good at it.

## For next time

Even after all of that learning and improvement, there are still a few really obvious areas of improvement: 

1. I need to focus on time management, specifically [time blocking](https://en.wikipedia.org/wiki/Timeblocking). Many of the most successful and productive people in history have used this technique to focus their minds. Time blocking cuts out the static of internet distractions, helps you get anything done faster, and you even feel better and more relaxed while doing it. Not only that, but it changes your perspective on your planning from "what do I want to do with my time" vs "how much can I get done with the time I have?" I took some practice swings at planning out my day with a time blocking planner at the end of this first month. It was difficult to adopt at first – nothing is more abhorrent to an internet-addled brain than doing only one thing at a time – but on the days where I really committed to the practice, I saw a huge productivity gains. I think this would have been really difficult to pull off in week one though. I was just so new to absolutely everything that I couldn't predict how long anything at all would take. Now that I've got a better idea of the ebb and flow of my day, I think I can make better predictions about how long a given task will take.
   
2. I need to allocate more time to marketing and promotion. I did a fair bit of marketing work in weeks one and two in the form of Slack posts and Reddit outreach. I gained about 100 subscribers between Twitch and YouTube, and had maybe 500 visitors to the blog. I gained the lion's share of subscribers and blog visits when I was actively making posts and sharing links. While I would really like it to become a self-sustaining thing that I don't have to work at very much, I'm not quite there yet. 

And indeed, as I need to keep reminding myself, building The Thing is at best 50% of the holistic process of developing a product. Marketing and outreach is really important! More can only be better for me at this stage in the game. 

3. I need to get something deployable out on the internet right away. I had grand designs to do this in week one in the form of a landing page for Plotters, but there were too many moles to whack in the end, and nothing ever got deployed. Getting something out early is really important for a number of reasons: 

- Most development happens locally, and when you deploy your precious little flower of an application into the insane, Lovecraftian machine that is the internet, things completely fall apart the first time around. It's much better to experience these breaks early on, and to see the new ones that crop up during subsequent updates right away, so you aren't surprised in the 11th hour.
- If I have something online, then I have a link to share out to potential users, which is great for marketing, and I can also get feedback from alpha users, which is good for steering future development work.
- If I'm constantly deploying, then it will help me avoid getting too far out on a limb when it comes to building out features. I spent several days building out static template pages for Plotters, but I only ever ended up hooking up a few of them to the backend, meaning that I spent a lot of time building out the templates for pages which ended up not ever being used. 

## Final thoughts

It's been a hell of a ride thus far! I wasn't sure if this was going to work out at all when I started. On day one I was nervously pacing around my office, hooking up microphones and cameras, tidying up the bookshelf behind me. Full of self-doubt, wondering if anybody was going to show up to the stream at all, or whether I could really build something that people would actually pay money for.  

In some ways I'm grateful to have "not made it." As I say that, I'm feeling the pinch of my good fortune reminding me that I've got the latitude and range in life to fail at all while many don't, but it's true: it's good in many ways to experience an early failure. To have experienced an early success in many ways would have been worse: a success at this stage in the game would not have been a product of learning or preparation or anything origininating from within me; it would have been luck, or chance, or maybe even a product of **under**ambition as opposed to overambition. 

By shooting too high and missing, I've given myself the maximum opportunity to explore my boundaries and figure out what's possible and what isn't. I've also shown myself that failure in and of itself is not world ending. I really like this interview with Dave Chappelle on Inside the Actor's Studio. In the clip below he's talking about doing his first standup show at the Apollo Theater at the age of 14 and getting booed off stage by the crowd. He says of the experience: 

> "That was the best thing that had ever happened to me ... That night was liberating, because I failed so far beyond my wildest nightmares of failing that it was like, hey, they're all booing, my friends are here watching. This is not that bad. And after that, I was fearless."

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/q5myC2B0VN8?start=318" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Now, I'd be lying if I said I wasn't disappointed at all to be "empty handed" at the end of Month One. All of this "failure is good" stuff is still pretty hard for the fragile human ego inside of me to swallow completely, but I've got high hopes for Month Two. I feel more confident, I've got a better grasp on my tools and on my strategy, and a better idea of what's possible to finish in the scope of four weeks. Fingers crossed, but I think we're gonna make it next time around. 

Until then, thanks for reading, and see you next week!

\- Andy














