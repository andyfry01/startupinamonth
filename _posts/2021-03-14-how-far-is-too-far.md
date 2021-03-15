---
title: "How far is too far?"
excerpt: "The growth of the spirit is absolutely essential to the thing stitting above the act of writing code..."
---

(New here? [Find out what Startup in a Month is about](/what-is-startup-in-a-month/)!)

Well, I just got done with another Cycle with a capital C. Another turn around the neverending wheel of solo development strife. 

This time around I was building the user authentication system for [Pic Story](/pic-story-pitch), user authentication being the system which enables a user to sign up for an account, create stories which are tied to that account, and which ensures that only that user can ever see or use the pictures and text that he or she has uploaded. 

And all the while, I was not only trying to _just. do. the. damn. work._, but I was fighting a lot side battles, and constantly turning over one of the central questions to the whole task: am I going too far? Am I getting too deep in a home-rolled auth solution when there are auth vendors that can do it for me? 

Am I wasting my time with all of this and distracting myself from the real task?

## Password authentication? How hard could it be?

<img src="/assets/images/how-far/duck.jpg" style="width: 100%" alt="Duck flapping wings">
<p class="photo-attribution">Photo by <strong><a href="https://www.pexels.com/@dsd-143941?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels">DSD</a></strong> from <strong><a href="https://www.pexels.com/photo/photo-of-brown-and-grey-duck-on-body-of-water-1010269/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels">Pexels</a></strong></p>

As it turns out, pretty fracking hard. It's one of those classic [Door Problem](http://www.lizengland.com/blog/2014/04/the-door-problem/) parts of app development: something so commonplace and seemingly simple that the layman can hardly intuit the vast web of complexity which makes that seeming simplicity possible for the end user. A serene duck languidly gliding along, betraying no hint of the furious kicking just inches below. 

We never stop for a minute to think about everything that goes into it: 

- Databases to store users, emails and passwords,
- Password salting and hashing to ensure that passwords won't be revealed even in the event of a breach,
- Validations for usernames, emails, and passwords to ensure they meet basic requirements (no users with the same username or email, minimum length passwords, etc.),
- HTTPS to ensure that the transmission of credentials back and forth between client and server remains secure,
- Sessions to keep track of who is logged in and where, using HTTP-only cookies of course. You are building your whole app on a single server and a single domain, right? And you've got some mechanism to expire sessions too I assume?
- Automated password reset options for users who forget their passwords, leading to the need for:
- Encrypted password reset tokens to enable automated password resets, complete with expiration mechanisms to minimize the time window for their potential misuse.
- By the way, how are you going to send those encrypted password reset tokens? Over email? Alright, now your app needs to be able to send email, and has thus fulfilled [Zawinski's Law of Software Envelopment](https://en.wikipedia.org/wiki/Jamie_Zawinski#Notable_Quotes).
- And more. Much more. 

All of this stuff I've known about in vague, general terms for a while. I _knew_ in theory what a password hash was for example, but I've never actually hashed one myself! Not only was all of that functionality, like, really intense to implement from the ground up for somebody whose never done it before, but the work was burdened with this acute feeling of _need-to-get-it-right_-ness. 

## What's the big deal anyway?

If I get a CSS style wrong, then the layout looks a little weird on some devices. Maybe I lose a bit of face with a persnickety customer, but that's the extent of the damage. But if I get the auth system for an app wrong, that can create serious problems for people. 

You could make a decent argument that now is not the right time to worry about security in the first place. What, I'm worried about users getting their credentials stolen? Which users would those be again? They might never even turn up in the first place! And hey, what am I building anyway? Basically a WYSIWYG webpage builder right? It's not like I'm running a bank, what's the harm if it DOES get compromised? 

Well, if someone hacks into my users' accounts and I've saved the passwords as plaintext, and assuming most users use the same password for everything, all of a sudden the breach of **my** little web app becomes a breach of **somebody else's** retirement account or medical history. Or maybe someone has uploaded a bunch of photos in a big batch into their account. Some of them they will use in an actual story, but several of them should remain private. If someone hacks into the server, now they've got something they can use to blackmail or embarrass a user.


## Why build it yourself at all?

<img src="/assets/images/how-far/welding.jpg" style="width: 100%" alt="Worker welding steel">
<p class="photo-attribution">Photo by <strong><a href="https://www.pexels.com/@kateryna-babaieva-1423213?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels">Kateryna Babaieva</a></strong> from <strong><a href="https://www.pexels.com/photo/person-welding-wearing-a-prootective-metal-mask-3158651/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels">Pexels</a></strong></p>

So, knowing all this, I found myself lusting after some kind of SaaS product which could solve my woes. Something built by experts that could wrap up the solution to this pernicious problem in a nice box and drop it on my doorstep. Something like [Okta](https://www.okta.com/products/authentication/) or [Auth0](https://auth0.com/): an authentication-as-a-service provider. (note: I have no promotional relationship with either company).

So why didn't I go with something like that? Let me invite you into the whirlwind: 

### Auth-as-a-service pros

#### 1. I get to spend more time building my app

The auth part of the app is certainly a "part of the application," but it's not really the _point_ of the app is it? The point is to be able to [easily create great looking photo stories](/pic-story-pitch), not create a user account and password. If I was being a good little 21st century businessman, I would have identified the auth problem as lying outside of my [core competencies](https://www.investopedia.com/terms/c/core_competencies.asp) and would have shopped it out to someone else. And bam, I've literally just purchased another week's worth of direct development time on the app! Easy.

#### 2. I get to sleep easy knowing it's someone else's problem

I've met a handful of people who have this inhuman ability to banish all thoughts of risk from their minds. No matter what risks associated with their endeavors could be, either for themselves or others, they can avert their eyes from it and blithely go about their work as if the risk didn't exist at all. 

Sometimes I wish I could do that. And on a good day, I can even see the merits of that kind of thinking. One lesson I'm trying to learn this year is that things are rarely as scary or high-stakes as I imagine them to be.

I also believe that a lot of the insane problems that technology is creating for the world are a direct result of the aforementioned magical risk-ignoring mindset of certain powerful people, but if I don't stop writing about that I'm never going to finish this blog, so let's continue. 

Suffice it to say: shunting responsibility to others and thereby absolving yourself of the blame if something goes wrong is really easy and feels really nice. We do it all the time in many areas of our lives to great effect, why not do it here too? 

### Auth-as-a-service cons

#### 1. Cost

This stuff gets expensive fast. For Auth0, just 10,000 monthly active users currently comes out to $228/month, $2,736/year. A single app using Okta authentication can cost $17,000 annually (or more!) once you pass the 1000-user threshold. For a guy with zero outside funding and who is planning on developing a dozen applications over the course of the year, this is expensive!

#### 2. Vendor lock-in

I've never used any of these services, but my experiences with other code libraries and SaaS products leads me to believe that once you get in bed with one of them, it is really hard to get back out again. The golden dream of the professional programmer is to write code without context: modules which assume nothing about their environment and can be combined and swapped around with breezy algebraic ease. Who's the auth provider du jour Mr. Bossman? Some external service? Something internal to the app itself? Doesn't matter. This is not my circus, these are not my monkeys. 

Of course, this is never the case in the real world. Unless you're [Rich Hickey](https://en.wikipedia.org/wiki/Rich_Hickey) or [Jonathan Blow](https://en.wikipedia.org/wiki/Jonathan_Blow), most code that you write will make some fundamental assumptions about its broader environment, and those fundamental assumptions are like the One Ring: practically impossible to unmake. When you're dealing with such broad, cross-cutting concerns as authentication and authorization, there's no way that those assumptions aren't going to worm their way into everything that directly depends on the authentication provider. 

It's expensive to get into, and more expensive still to get out of once the game changes and the costs become untenable. 

#### 3. Single point of failure

Put simply: if they get hacked, **you** get hacked. Maybe a hacker isn't interested in my app, but if I get involved with an auth-as-a-service company who has a high-profile corporate client, then I'm exposed to the same risk that someone like Target or Walmart is exposed to. This goes for a cloud-based anything for that matter: 

- In 2008, [Heartland Payment Systems](https://en.wikipedia.org/wiki/Heartland_Payment_Systems#Security_breach) was hacked, exposing the credit card information of **100 million credit card numbers**,
- In 2014, Apple's [iCloud storage system](https://en.wikipedia.org/wiki/ICloud_leaks_of_celebrity_photos) was hacked, exposing private photos of **500 celebrities**,
- And finally, something you've definitely been affected by if you're an American, the [2017 Equifax data breach](https://en.wikipedia.org/wiki/2017_Equifax_data_breach), which compromised the Social Security numbers of **practically every adult in the United States**. (By the way, do you know [where Equifax got its name from in the first place](https://en.wikipedia.org/wiki/Equifax#History)?)


## Beyond the business case

<img src="/assets/images/how-far/switchbacks.jpg" style="width: 100%" alt="Mountain road with switchbacks">
<p class="photo-attribution">Photo by <a href="https://unsplash.com/@jack_anstey?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Jack Anstey</a> on <a href="/s/photos/switchback?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a>   </p>

Ultimately, I opted to build my auth system on my own. Using plenty of references and libraries along the way of course, but ultimately all of the functionality lives within my own codebase. A lot of suits and ties out there are shaking their heads at this egregious misallocation of time and life-force when I've got multiple ready-made auth solutions just a credit card swipe away, but it felt good to do it in the end. 

It was a really hard thing for me to do, both in terms of the implementation itself, but also in getting over my fear of getting it wrong. Another lesson I'm trying to teach myself this year is that while hard work is not always good work, there's still a lot of pride to be had in winning an internal battle. I've been reading and re-reading [The War of Art](https://en.wikipedia.org/wiki/The_War_of_Art_(book)) by Steven Pressfield a lot, and fear is a central topic in the book: 

> Are you paralyzed with fear? That's a good sign. Fear is good. Like self-doubt, fear is an indicator. Fear tells us what we have to do. ... the more fear we feel about a specific enterprise, the more certain we can be that the enterprise is important to us and the growth of our soul. 

"What is this shit?" chimes a chorus of cheerless robots in the Hacker News comments thread. "Growth of the soul? This has nothing to do with programming, building a business, **or** the basic task of securing an application against hackers. Banish this frivolous nonsense from your heart and get back to swinging pickaxes in the code mines kid."

Oh, but the growth and nurturing of the spirit is **absolutely essential** to the thing that sits _above_ the act of writing code, and that is the act of creation itself. I felt pretty raw many, many times along the way as I wrestled with the competing shoulder demons of business sense and common sense, but at the end of it all I felt good. I got a lot better using the Clojure REPL, I got a lot more comfortable doing research on auth techniques, I got a lot better at swallowing my pride and refactoring when I had made an obviously wrong decision along the way, even a decision I had already sunk a lot of time and effort into. 

And at the end, when I could open up my browser, create a new user account, log in, log out, and reset my password successfully, it felt like a serious accomplishment. Like I had crested a huge mountain on my bike, and I could turn around and look at all the grueling switchbacks beneath me wavering in the hot sun. Sweat steaming from my shoulders, feeling a cool breeze at the base of my spine, lungs pumping triumphantly with the knowledge that in spite of all the times I wanted to bail out along the way, I did it anyway. I _could_ do it after all. 

From one perspective, I threw away a week and a half of production time on something I could have solved in a day or two. But from another, hopefully wiser perspective, I traded that time for some things which are going to count a lot more than the business solution itself: a deepening of skills, a broadening of self, and the confidence that comes from slaying inner demons. 

That's a bargain of a trade for this guy at least. We'll see if it pays out, and how long the payout takes. I'd bet it comes soon. 

## One last thing

Thanks for reading this! It's a busy world, and it means a lot that you spent some of your your time and attention on what I'm doing. 

Would you like to join my mailing list? I send out updates once a month, so you can stay informed on what's going on, but not _too_ informed 😊

<form action="https://sendy.startupinamonth.net/subscribe" method="POST" accept-charset="utf-8">
	<label for="name">Name</label><br/>
	<input style="background: white;" type="text" name="name" id="name"/>
	<br/>
	<label for="email">Email</label><br/>
	<input style="background: white;" type="email" name="email" id="email"/><br/><br/>
	<div style="margin-bottom: 1.5rem;">
		<span class="gdpr-permission">
			<input type="checkbox" name="gdpr" id="gdpr"/>
			<label for="gdpr"><strong>Marketing permission</strong>:</label>
		</span>
		<span>
			I give my consent to contact me via email for the purpose of news, updates and marketing. If you wish to withdraw your consent, click the unsubscribe link at the bottom of our emails or send an email to <a href="mailto:andy@startupinamonth.net">andy@startupinamonth.net</a>.
		</span>
	</div>
    <br/><br/>
	<div style="display:none;">
		<label for="hp">HP</label><br/>
		<input type="text" name="hp" id="hp"/>
	</div>
		<input type="hidden" name="list" value="8xpdlVrcgW8921MAwkzOi1vw"/>
		<input type="hidden" name="subform" value="yes"/>
	<div>
		<button class="primary-cta" type="submit" name="submit" id="submit">Sign me up!</button>
	</div>
</form>