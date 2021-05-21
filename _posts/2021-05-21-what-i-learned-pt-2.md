---
title: "What I learned launching my first product, part 2"
excerpt: "The Hunt for Alice, or: The Tyranny of Small Things"
---

[Read part 1 of this series](/what-i-learned-pt-1/)

Welcome! This post is part of a blog series about things that I've learned from releasing my first product as a bootstrapped startup founder. It's been a massively educational process for me, and I want to share my learnings for the benefit of others and to document the journey for myself. 

These posts are all about [PicStory](https://picstory.studio), which is an app that lets you make cool photo stories and share them with anybody. It has three goals: 

- to give you more creative freedom to create than Instgram or Google Photos, 

- to give you a simple and accessible interface to create stories, and finally

- to make it easier to share them with friends and family by not locking your content into a walled garden where you have to have an account to view a story. 

Check it out! [And let me know what you think](https://app.picstory.studio/#/feedback).

![Pic Story Logo](/assets/images/what-i-learned/picstory-logo.png)

So, let's dive into lesson two: 

## The Hunt for Alice, or: The Tyranny of Small Things

As I got ready to put PicStory online, I wanted to do some final testing: a walkthrough of the whole flow of the app from start to finish to make sure that everything was working as it should. Logging in, making a first story, uploading photos, adding text, styling individual layout blocks: absolutely everything. 

Much to my dismay, once I actually sat down to go through all of these "real world" user interaction flows, I found that hardly anything was working! 

This came down, ironically, to the tech stack I had chosen to build the app, which, even more ironically, I had very intentionally chosen to give myself a productivity boost! And yet here I was, spending hours rewriting and tweaking a dozen little things. I built the whole app top to bottom in [Clojure](https://en.wikipedia.org/wiki/Clojure) and [Clojurescript](https://clojurescript.org/). Without getting too deep into the tech aspects, the specific productivity gains I wanted from Clojure comes down to the isolated coding style it encourages. Clojure encourages you to write your functions in a "pure" way, and discourages interlinking your functions too much with the other parts of your app. 

Not only that, it gives you a wonderful interactive environment for testing functions too: once you've written a function, you can start testing it instantly with demo code directly in the module in which you wrote it, which makes it easy to rapidly test and debug everything in isolation from the rest of your app. 

One of the truly ironic consequences of this style of development is that if you've written a function in "isolation" from the rest of your app, then it's very easy to write about 90% of a feature and then forget about it until you really need it. Many times I said to myself, "Ok, I've gotten this thing mostly figured out by now. It's not quite ready to hook up to the rest of the app just yet, but hey, how hard can it be? It works in this little sandbox environment, all I need to do is just replace all of my stub code with the real thing and then I'll be golden!" 

In practice, this had two implications that I didn't fully appreciate until it was go time: 

1. I thought I had "finished" much more of the app that I thought I had finished. Which is to say, I really had finished most of it, but a lot of it was all hard coded for a single test user: [Alice](https://en.wikipedia.org/wiki/Alice_and_Bob). For Alice, the app worked flawlessly. She could sign up, she could upload a photo, she could save a new story, it was fantastic! However, when it came time to test the app for other users like [Bob](https://en.wikipedia.org/wiki/Alice_and_Bob), it was a disaster. When I tried to sign up for the site, Alice greeted me as the logged in user on the home screen. When I uploaded a new photo for a story, it ended up in Alice's folder on the server. When I saved one of Bob's stories to edit for later, it never showed up in the list of stories for Bob. Guess where it did show up? **In Alice's account!** I must have stubbed my toe on a thousand hidden Alices before I could truly say that the whole app could function 100% correctly for any user. 
2. For old functions that I had written weeks ago, sometimes the rest of the codebase had changed to the point where those old functions no longer worked. It was never anything too drastic – an API endpoint which had changed names, a folder which had moved, a module with a new path – but each time I discovered something like this, it was just another vampire bat sucking out my momentum. It was taxing on my motivation: I was supposed to be in the end-game, and yet there I was retooling problems I thought I already had solved. It was mentally draining too. I was trying to juggle a hundred little tasks across all kinds of domains, and now I have to revisit a bunch of code I've already written, get my mind back into the context of what that old code is doing, perform the fix, test the fix, and reintegrate it into the app. It was rarely a big fix, but many small fixes quickly accumulate into a huge time sink. 

If I had written the app in a different language, I don't think I would have had so many of those Alice problems. When your code is enmeshed and interlinked into one nasty hydra of an application, one broken piece can bring the whole thing screeching to a halt, at which point you have to go back and fix that one little piece no matter what it is. When your code exists as a bunch of small independent modules, those small breakages can be harder to notice, and your functions can moulder and become stale. 

Granted, I would *still* write the whole thing in Clojure. The productivity gains from the language vastly outweigh these little problems that I encountered along the way. But in the future I'm going to be more careful to integrate a function or module into the app straight away to minimize these 11th hour surprises. 

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

[^1]: Patrick McKenzie talks about this in his talk about [Improving the First Run Experience](https://training.kalzumeus.com/first-run-experience). In short: if you don't grab a user on their very first run-through with the app, then you've lost them. 