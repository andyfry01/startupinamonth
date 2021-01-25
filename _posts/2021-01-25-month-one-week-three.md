---
# layout: post
title: "Startup in a Month, Month One Week Three: Wholesome Animemes and the Atom Watcher Revelation"
---

[Watch me program live every morning at 9:30 EST!](https://www.twitch.tv/a_fry_)
<br />
[Check out past streams on YouTube!](https://www.youtube.com/channel/UCkDn7Pnyeq3SJha1x3GXTkQ)

There's a funny way that time dilates and contracts when you're spending a long time walking around in unexplored territory. On the one hand I can't believe that this first month is almost over. I had expectations of getting so much more done than I (feel) like I have so far. On the other hand, it feels like an eternity since I started this venture. I feel like I've had so many revelations and learned so many new things already that my mindset is lurching and changing from one day to the net, careening wildly from one concept to the other. 

And so we come to our **failure of the week** feature! This weird world is great at showcasing a success, but behind every success lies ten failures. In each weekly recap, I'm going to put my failures up front to show you all that stuff is hard, and it takes a lot of trial and error to get it right in the end. 

## Failure

My failure for this week is not getting enough sleep. A nice thing about all this learning is that it's rewiring my brain and equipping me with what I need for the journey ahead of me, but a consequence of a "wired" mind is that can be hard to turn it off at night. Take [websockets](https://dev.to/ben/explain-websockets-like-im-five) for instance, just one of the 15 mind-bending things that I'm trying to wrap my head around while building out the Plotters game. I'm so used to the conventions of HTTP server requests and responses that the concept of having true instantaneous communication between two or more separate apps is proving difficult to get my head around, and especially when it comes to tracking "state," which in a game comprises things like the score, what the players have entered for their fake plots, and who voted for which plot. Do I track any of it on the client at all? Do I track it all on the server? How do I send updates back and forth? How do I pick when and how to update what, where, and for whom? In the middle of the night I've been having revelations like this:

<img src="/assets/images/you-awake-game-state.png" alt="Websocket meme: What if every player has a complete copy of the state at all times, and all you need to do is choose when to show certain pieces to them">

And snap, I was up for another two hours relentlessly, mercilessly pondering how I would do that, counting down the hours until my alarm would go off and wondering whether I'd be too sleep deprived to actually write any of it.

It certainly feels good to have these kinds of revelations! It makes me feel like I'm going somewhere, getting something done. But having these little mini-strokes of insight during your downtime isn't great for ensuring a consistent, steady pace of work. Nor does it feel good to make the responsible decision of heeding your body's needs and taking a morning or afternoon off when you need it. It's a marathon, not a sprint. I'm my own boss, nobody's keeping track of my work schedule. If I'm gonna make it a whole 200-ish days of working on this project in 2021 then I can't be burning myself out on day 12.

I'm also having a tough time getting a grip on my expectations. I'm trying my best to LARP as a life-savvy, wizened 30-something and get a lid on the insecure, volatile mania of my 20s. All I can really do is repeat my various mantras to myself:

- "Whatever you get done is ok."
- "It will be enough." 
- "You're laying bricks in the foundation. You'll be so much faster once you get a grip on the common threads that will run through each of these startups, and you probably won't even realize it."

"But I want it to be spectacular now!" says the 23-year-old in my head, full of high expectations and minimal context. "And perfect!"

## Let up the reins

So, what is the solution to all of this? The bad feelings of losing an afternoon's worth of production time, of silently grouping features into "needs to get done" and "probably won't get done" in the ledger of your mind? The sensation of not being entirely in control of the story, even though you're the one in the driver's seat? 

You could push back against it all, and maybe you'd even win. Or you could learn to work "with" these limitations as opposed to "against" them. David Heinemeier Hansson of Ruby on Rails and Basecamp fame talks about this in his "Unlearn your MBA" talk (embedded here at the appropriate timestamp). When you work with your limitations instead of against them, it has a way of honing your thinking and your efforts. 

The idea boils down to this: you don't have the resources or the time to build a Taj Mahal or a Great Wall of China, but you *do* have enough time to focus on the parts of a product that really, truly matter. The core pieces that deliver the most value. The "20" of the [80/20 rule](https://en.wikipedia.org/wiki/Pareto_principle): 

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/MlhAkNWC1qo?start=1172" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<div style="margin-bottom: 1.3em" aria-hidden="true"></div>

There's a similar concept in the Japanese martial art of [Aikido](https://en.wikipedia.org/wiki/Aikido), specifically the technique of "tenkan," which comprises moves that use your opponent's momentum against him/her. Instead of blocking an attack, you put in a couple of deft twists, steps and turns so the attack continues forward without connecting, thereby putting your opponent off balance and putting you in a great position for a counter-attack.  

I've had a lot of Japanese inspriation this week actually. I'm finally getting around to watching Fooly Cooly this month. One thing that I love about a lot of animes is that they can be so beautiful, evocative, and dirt cheap all at the same time. A lot of animation teams are almost playing a game with your eyes to see how *few* drawings they can use to trick you into thinking that you're watching something real. How *low* can we take the framerate of this movement? How *close* can we bring you to the line between a believable movement and a handful of unconvincing still frames flashed in sequence? 

Take this scene from the end credits of the show. That moment where Haruko is mashing the hell out of that Vespa kick starter pedal is, like, **maybe** three drawings tops, with a static black outline of an airplane sliding slowly away in the distance. I don't want to disrespect the skills of the artists, it is truly sublime to achieve so much with so little, although you have to agree: it is dirt cheap animation. 

But have you ever seen a better depiction of what it's like to be stranded alone in the middle of nowhere with a junky bike that won't start? I find myself rewinding this part a few times in every single episode. 

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/Bo1kI9q-m-s?start=64" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" style="margin-bottom: 1.3em" allowfullscreen></iframe>

<div style="margin-bottom: 1.3em" aria-hidden="true"></div>

So anyway, that's where I'm trying to keep my head pointed: limitations can be recast into strengths, stripping away the excess and forcing me to focus on the essential. Sometimes I can keep that idea in my head long enough to do something with it, but I'm sure I'll only get better at it if I just keep trying. (See? Maybe it's working already.)

## Clojure Aikido Anime

While we're on that topic, I'm thinking I've made a really good choice by choosing and committing myself to Clojure. I'm flouting everything I've ever read about starting a business by doing so, but it has such a feeling of rightness to it that I can't stop myself. A thousand imagined tech bloggers and Hacker News commenters are waiting in the wings of my mind to berate me for my decisions: 

- "Build it with the tech that you know!" 
- "Hype driven development is a fool's game!" 
- "You're wasting time learning this kooky language when could be building stuff itself!"

And yeah yeah, those ideas all have *some* merit to them. I'm not dumb. But I can feel that this investment is going to pay off very soon. 

One thing I've been scratching my head about since I started using Reagent is the fact that the entire React API seems to be ... uh ... completely MIA. Where's the rest of it? The hooks, the effects, the Context API, the lifecycle methods? We've got components and the virtual DOM, that good old `d = f(s)` which the library is so famous for, but where is my precious `useEffect`? 

And then I found out why this week when I stumbled across the concept of [atom watchers](https://clojuredocs.org/clojure.core/add-watch), and my head popped a little bit. Who needs a `useEffect` function that's locked away inside of React itself when you can use atom watchers anywhere in your whole program? Who needs an observable library like [RxJS](https://github.com/reactivex/rxjs) when the most important and most useful pieces of [functional reactive programming](https://en.wikipedia.org/wiki/Functional_reactive_programming) – the observer and the observed – are already baked into the language itself? AND all of it is available both on the client and the server with identical APIs.

Just the fact that I have all of this at my beck and call immediately – no `npm install`, no dependency churn, no goofed up, stress-inducing, incomprehensible Webpack rat kings to distract me from just building the damn thing – is such a incalculably huge win, and it's coming so soon in the process. Just a few more kicks on the Vespa kick starter is all I need, and I think I'm going to be zooming way farther than I could have ever made it with Javascript alone.

## But what about the game? Will you finish it in time?

I think I will, but it will be much smaller than I thought it would be. Maybe I won't even have time to integrate a user system or a payment system at all. Which is a little freaky – the point of this after all is to make some money eventually – but I need to treat this first startup like the shakedown cruise it is. A learning experience, a foundation-laying exercise, a jumping off point for bigger and more lucrative things. 

And besides, maybe putting it out for free from the getgo could be the thing that makes it go big in the first place! Wouldn't be the first time. 

\- Andy