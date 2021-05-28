---
title: "What I learned launching my first product, part 3"
excerpt: "I don't have a single user yet and already I'm worried about saving money on hosting?"
---

[Read part 1 of this series](/what-i-learned-pt-1/)
<br />
[Read part 2 of this series](/what-i-learned-pt-2/)

Welcome! This post is part of a blog series about things that I've learned from releasing my first product as a bootstrapped startup founder. It's been a massively educational process for me, and I want to share my learnings for the benefit of others and to document the journey for myself. 

These posts are all about [PicStory](https://picstory.studio), which is an app that lets you make cool photo stories and share them with anybody. It has three goals: 

- to give you more creative freedom to create than Instgram or Google Photos, 

- to give you a simple and accessible interface to create stories, and finally

- to make it easier to share them with friends and family by not locking your content into a walled garden where you have to have an account to view a story. 

Check it out! [And let me know what you think](https://app.picstory.studio/#/feedback).

![Pic Story Logo](/assets/images/what-i-learned/picstory-logo.png)

So, let's dive into lesson three: 

## It's easy to "intentionally" waste time on performance and cost reduction

This was a big one for me. As a founder who is also building the product itself, I get hit from two different directions when it comes to the topic of performance and cost savings: 

- as a programmer, it's very easy to get sucked into a mindset that an app has to meet some minimum level of performance to have a chance of working in the real world[^1]. 
- As a solo founder bootstrapping my apps on a limited budget, I've got a lot of mental pressure riding on the idea that I need to save money wherever I can[^2]

This came to a head with my choice of hosting provider. I initially wanted to go with Digital Ocean because I'm familiar with them. And in the 11th hour as I was getting ready to launch, I discovered that Linode can offer basically the same cloud server hosting as Digital Ocean, but for a marginally better price. 

Right away, my mind started to turn over the prospect of switching to Linode. "This is an opportunity to save some money! And it's a smart business move to make, right? This thing might be online for years, think of all the cash I could save. And after all, I'm launching a dozen apps this year, if you multiply out the factorial of how much these things will cost to host, that's even more money saved!"

And so, after weeks of using Digital Ocean and after having become modestly entangled into all of the technical debt that comes along with using any cloud-based service, I found myself signing up for Linode. Researching Vagrant integrations with Linode. Debugging aforementioned integrations. Generally getting into the weeds and not making any headway on actually getting PicStory online. 

These kinds of performance enhancements have a kind of opiate allure to them. Monthly server hosting costs? Reducing the size of CSS and JS files? These are all "easy"-ish problems with "easy"-ish solutions and clear benefits. The solutions to all of these things reside within the sphere of the technological, where I am most comfortable and familiar. 

After spending some time on this Linode tangent, eventually it hit me: what am I *doing*? I don't have a single user yet and already I'm worried about saving money on hosting? This is a problem for Future Andy, not Present Andy. Figure this out later. Hell, I could even figure it out *months* down the road, and I'd only have spent like $100 more than I would have otherwise. For now, I need to just **get this thing online** and then worry about the small stuff later. 

And so I put my focus back to the task of just getting it out there, switched back to Digital Ocean, and got on with the more pressing and immediate issues!

## Easing up on the reins

Since releasing Pic Story, and as I've been working on [Mail File](/mailfile-announcement/), I've been turning this question of hosting and expenses over in my head more. App infrastructure is something that I've never been particularly good at. Sure, I CAN set up a server from scratch. I HAVE done it. Some people even LIKE to do that kind of work. But it's a massive source of stress for me. I've tried out a number of other products and strategies for minimizing that stress – Vagrant at first, a brief dalliance with Docker and Kubernetes – but there's no silver bullet for any of it. 

And so, having struggled with making smart infrastructure choices for a couple months and feeling stuck, I'm letting up the reins a little bit. I'll be using Heroku hosting for Mail File. It's several orders of magnitude more expensive than a DIY cloud server, and those expenses will only increase if I stay with Heroku or some other PaaS for future apps. However, if that additional expense means that I get to avoid some extra stressful work and some extra dumb errors and bugs, it has to be worth it, right? 

This is a delicate one-man operation after all: anything that takes pressure off of my shoulders has to be worth the cost if it leaves me feeling lighter and nimbler. 

That feeling of lightness, as I'm discovering, is really important. When I say "delicate one-man operation," I really mean it. Work is an emotional rollercoaster no matter what you're doing, but emotional disturbances hit way differently depending on what the job itself is like. 

When I was working in a big 15-person team within a huge corporation, I could weather an emotional storm much more easily. If I was having a bad week, I could take my foot off the gas and coast when I needed to. It's easy to camoflage yourself when your manager has 15 other people to keep track of and the CEO is in another timezone entirely. Once the coasting is done and you've had time to cope, you can jump right back in, and nobody's the wiser. 

When you're on your own though, the game is completely different. An emotional problem which might have been manageable in a big corporation can bring all production to a screeching halt when there's nobody around to take up your slack. 

When you lose all momentum like that, it is a serious pain in the ass to get it back. You have to re-establish your rhythm, you have to reassess your deadlines, you have to put down the meta-stress about missing aforementioned deadlines, hell: you have to remember what the hell it was that you were even working on before everything came crashing down around your ears! 

After going through this cycle a few times, it's shown me that maintaining an even keel and maintaining consistency is crucial to my success and wellbeing. And if the price of that expense is higher hosting costs, then so be it. 

So there's my third lesson: find the balance between what you're spending and what you're getting out of it. The name of the game isn't to get your product out for as little money as humanly possible. Keeping expenses down is important, but it's not the whole story. What's more important is to find the sweet triple point where productivity, well-being, and expenses all come together to form a harmonious whole. If you can unlock that riddle in your work, you've made it my friend!

[^1]: For example, [Google research from 2016](https://www.marketingdive.com/news/google-53-of-mobile-users-abandon-sites-that-take-over-3-seconds-to-load/426070/) showed that *over half of your visitors* will abandon your page if it takes longer than three seconds to load! Yikes.
[^2]: This is important of course: money doesn't grow on trees. But if you take this idea too far it's probably less about being frugal and more about succumbing to [scarcity mindset](https://www.npr.org/transcripts/598119170)

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