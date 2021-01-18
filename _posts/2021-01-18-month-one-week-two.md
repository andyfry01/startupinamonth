[Watch me program live every morning at 9:30 EST!](https://www.twitch.tv/a_fry_)

[Check out past streams on YouTube!](https://www.youtube.com/channel/UCkDn7Pnyeq3SJha1x3GXTkQ)

Well, it was a tough second week, not gonna sugarcoat it. This was really the week where I swam out from the shoals of Basic Beach and took my first couple of strokes and kicks in the Ocean of the Unknown. Set up a Twitch page? Start streaming? Start a blog? Set up a basic HTTP server? Configure a database? From a certain angle, these are indeed challenging things to do, and these are all things that have given me a lot of trouble at various stages of my career. But most of it was nevertheless known to me, even though I'm doing it all in a brand new language and in front of an audience, so I could feel relatively confident as I did it. 

This week we started getting into some new technologies and hit our first big technical roadblocks, which is a great segue into our headlining topic! **A failure of the week.** This weird world is great at showcasing a success, but behind every success lies ten failures. In each weekly recap, I'm going to put my failures up front to show you all that stuff is hard, and it takes a lot of trial and error to get it right in the end. 

## Failure

Chief among my failures this week was setting up the connection between the game frontend and the game backend (if you're not familiar with the distinction, [here's a decent Quora answer](https://www.quora.com/What-is-meant-by-the-front-end-and-back-end-of-a-website?page_id=1#!n=18)). Seeing as this is a multiplayer game, the communication between players needs to be instantaneous, and that means websockets. I'd heard of these mysterious things before, but I'd never used them. I did some background reading, looked up Clojure websocket libraries, chose a library ([Sente if you're curious](https://github.com/ptaoussanis/sente)), and started in on integrating the library into my existing code. 

This, of course, completely flopped. I got majorly stuck on the implementation on day one and didn't get anywhere with it. So on day two I decided that I had better find a pre-built starter that I could use, seeing as stringing up something from scratch was fairly involved and above my head. I did find a starter kit, and did get it running, and the instant I tried to do something custom with it, it all fell apart on me. Somehow I managed to not only break my super simple test code, but also the pre-existing code as well. Which is fairly embarrassing. More embarrassing still in that the starter kit had been purposely built out to be as simple as possible, and I still couldn't figure it out.  

And so after two precious days, 10% of my allotted development time for the month, I ended up with no working code, maybe a couple new insights about how websockets work (along with a ton of new confusion), a nasty bundle of nerves. What am I doing? I purposely picked this game for month one because I thought it was going to be easier than my other ideas, and I'm already stuck? Bad news. 

## Redemption: Let It Sit

So I was feeling pretty raw on Wednesday after a Monday and Tuesday full of roadblocks. At a certain point in my life I probably would have jumped back into it – jaw set, lip stiff – and wrestled the problem to the ground, but I decided to switch gears and work on something else instead. I've yet to take this course for real, but the teaser video on [focused and diffuse modes of learning](https://www.coursera.org/lecture/learning-how-to-learn/introduction-to-the-focused-and-diffuse-modes-75EsZ) really sold me on it. The idea is that your brain does a lot of work in the background to solve a problem or learn something new, and this is completely different from how you learn when you're focusing intentionally on a problem. 

I remember the exact moment I learned how sleeping on a problem can give you new insights into it. I was really into Donkey Kong Country as a kid, and I got stuck for days on [this puzzle](https://youtu.be/QwzBDx1dMfQ?t=294). You can only slide down on the purple ropes. You can hold the up button on the controller to stay in the same spot, but you can never climb up. So when the game presents you with two purple ropes, a pit of death below you, and seemingly no way to go up, little 9-year-old me was totally at a loss for how to progress. My grandma, after listening to my 9-year-old lamentations and taking them grandma-seriously, said that sometimes you just need to sleep on a problem and the solution comes to you out of nowhere. And that night, I literally dreamed about the solution: you jump back and forth between the ropes instead of climbing. 

So, finding myself stuck on a purple websocket rope, I jumped over to a blue templating rope. The game needs a UI no matter what, so I may as well give myself a few days of wins by coding up some screens with [Hiccup](https://github.com/weavejester/hiccup) and [Tailwind](https://tailwindcss.com/), and it went great! I was firmly back in the domain of what I know well, and I was getting some important UI work done. I haven't dived back into websockets just yet, but I'll bet you $10 that I'll have a new and better perspective on the problem when I do. 

It's a damn shame that the world, with its schedules, sprint metrics and deadlines, doesn't give you more opportunities to sleep on a hard problem. The scientist who predicted the [Higgs boson](https://en.wikipedia.org/wiki/Higgs_boson) particle said in an interview that [he wouldn't be productive enough](https://www.theguardian.com/science/2013/dec/06/peter-higgs-boson-academic-system) to succeed in today's academic system. Einstein would spend hours on a row boat in the middle of a lake and playing the violin, and this is when he'd have his breakthrough ideas. There's certainly a balance to be struck between putting in the time on a hard problem and letting it sit, the focused and the diffused. I think a lot about where that balance lies. 

## Laying Foundation Blocks

I'm also grappling and coming to terms with the fact that while this is indeed the first startup, and while I'm shooting for a fully functional MVP product to release at the end of week four, this first startup is going to be so much more work just for the simple fact that I'm starting from square one with everything. Streaming, the Clojure language itself, developing the app, figuring out how to host a production app, figuring out how to host 12 production apps without completely breaking my bank or sinking all my time into server maintenance, balancing promotional activities with building, on and on and on. There is so much foundation that goes into all of this. Way more than my rose-tinted mind was able or willing to see before I started.  

Makes me think that I would have been better off with just a little bit more preparation. Just a few more days where I spent some time laying more ground work so I could hit the ground running *just* a little bit faster. But what better teacher than the real thing, right? What better way to actually discover what those foundation blocks need to be than by just diving into it unprepared anyway. 

Several lifetimes ago, I walked the [Camino de Santiago](https://en.wikipedia.org/wiki/Camino_de_Santiago), an ancient 500-mile pilgrimage across northern Spain, East to West. When it comes to preparing for the Camino, sure, you *could* train for it, but why not make the first couple days of the pilgrimage your training instead? The average distance you need to walk to do it in a month is 20 kilometers per day, every single day, and that is a hell of a lot of walking in the hot Spanish sun. How could you even train to walk 20 km a day? Wouldn't you need to walk 20 km a day for like a week? That's not just something you casually pop off after work, that's five hours of walking at an average pace without breaks. And if you're gonna be doing that much training walking, why not make the first week of the real thing the training session? 

And hey, it's early days right? I don't want to jinx myself, but I think it's healthy to view this first pass with low expectations. It's a proof of concept, a test run, a shakedown cruise. What better time to make your mistakes, lay your foundation, and learn your lessons? And besides, I'll have 11 more shots after this if the first one doesn't land.

## Community 

One thing I've been very thankful for is the tiny little community I've built already. I've done the solo developer thing a couple times in my career, and it's really no fun to work by yourself in a vacuum without anybody else around. It breeds paranoia. Much better to have some people around, even if I only get to see shadows of them in the form of stream chat messages and video view counts. 

Last week I got one of the things I was really hoping to have, which was Clojurists in my chat helping me out with the code. I was writing a string-truncating function for the plot summaries – basically something to turn a big long string into a shorter string with a "..." at the end – and a viewer jumped right in with some comments when they saw I could make it better. You can check out our back-and-forth [at this timestamp in the YouTube recording](https://youtu.be/-bgN47s2u04?t=7849)! Here's the code we wrote together:

```clojure
;; My first function, very much a product of my "Javascript" brain:
(defn truncate-plot [len plot]
  (str (join "" (take len (str/split plot #""))) "..."))

;; Second function, after working with person in chat a bit:
(defn truncate-plot-2 [len plot]
  (join "" (concat (apply str (take len plot)) "...")))

;; Final, refined version after more chat help:
(defn truncate-plot-3 [len plot]
  (apply str (concat (take len plot) "...")))
```

Building that function cooperatively with a viewer was a really special moment for me. If you don't know the language, it might not look like much, but that last function is beautiful. It's like poetry: a fairly involved micro-universe of meaning distilled into basic units and expressed in a basic form. So thanks dontlikecats, whoever you are. I hope to meet more like you along the way!

\- Andy 