---
# cSpell:ignoreRegExp /\/assets\/.*/
# cSpell:ignore scrum'ish agilefall watergile eeeh problemo Yaaah overburdenness

title:  "DevOps for Executives"
excerpt: "This post explains the business case for DevOps - not in tech lingo, but in terms of people, organizations and product development."
search: true
toc: true
author: Lars Kruse
comments: true
tags:
  - DevOps
  - The Toyota Way
  - Continuous Delivery
categories: 
  - Test & DevOps
header:
  teaser: /assets/images/devops-executives/swasfactory.png
gallery:
  - url: /assets/images/devops-executives/size.gif
    image_path: /assets/images/devops-executives/size.gif
    alt: "Size matters"
    title: "When you set up a task, it's imperative that it's broken down and segregated, so that whatever priority you have on this task applies to all elements of the work. A high-priority task can not implicitly eclipse low-priority elements. We must minimize Work in Progress and continuously allow priorities to switch and adapt to what were doing and the feedback we get. Break it down"
  - url: /assets/images/devops-executives/batch-size.gif
    image_path: /assets/images/devops-executives/batch-size.gif
    alt: "Batch Size"
    title: "If everything you do is flawless and you know exactly what to do, then the batch size you choose doesn't matter much. A batch size of one and a batch size of four will produce four products in the same time and work effort - provided it is truly flawless."
  - url: /assets/images/devops-executives/one-defect.gif
    image_path: /assets/images/devops-executives/one-defect.gif
    alt: "One tine defect"
    title: "If we're experimenting and exploring, and we don't know for a fact that our process or product is flawless, then we need to make room for potential retries and corrections, under this condition the batch size starts to affect the efficiency. In an imaginary four station process a flaw discovered in the third station will finish 6 beats - or <em>takts</em> - faster in a one piece-flow compared to a batch size of four - and that is just one tiny defect!"
  - url: /assets/images/devops-executives/two-defects.gif
    image_path: /assets/images/devops-executives/two-defects.gif
    alt: "Two defects"
    title: "The implication of the combination of large batches and the need for continuous improvement is dire. Just adding one more tiny defect to the fourth station now makes the one-piece flor 15 beats faster compared to a batch size of four."
  - url: /assets/images/devops-executives/three-defects-large-batch.gif
    image_path: /assets/images/devops-executives/three-defects-large-batch.gif
    alt: "Larger batch - more defects"
    title: "In this scenario we only get the defect in the third station right in our second attempt, so in total we're up to three defects - and to emphasize the point the batch size is expanded to eight - Now the one-piece flow finishes with the same quality and the same amount of products 54 beats faster. The argument for a one-piece flow is to build quality in - as opposed to glue it on, after the production is finished, but potentially still flawed. The Japanese term used in lean is <em>Jidoka</em> and it's enforced by stopping the entire production when a defect is detected, so that defect never leaves it's station, and is never passed on to the next."
  - url: /assets/images/devops-executives/connected.gif
    image_path: /assets/images/devops-executives/connected.gif
    alt: "It's all connected"
    title: "<em>&quot;Software development is nothing like car manufacturing&quot;</em> you may claim, so maybe there is no real argument for paying attention to lean concepts in software? Well it turns our that even in software we have different stations, that are so closely entwined and connected, that it behaves very much like a value stream and we see the same argument for striving for a one-piece flow; In DevOps we call it a <em>pipeline</em>. And like the one-piece flow, the purpose of the pipeline is to make all problems surface immediately, and stop the flow immediately when it breaks. So a defect is never allowed to leave it's station. <em>Jidoka:<</em> - we build quality in."
---

![image-center]({{ page.header.teaser}}){: .align-center width="80%"}

{{ page.excerpt }}
{: .kicker}

## Software as a factory

In the early 80’es Toyota in Japan suffered in a market where low cost in production was tightly hinged on high volume, but Toyota didn't have a lot of money to spend at the time, and they saw that demand was different than large volumes of identical cars.

They developed TPS “Toyota Production System” which was referred to as _lean_ when used outside Toyota. It was a completely novel approach to manufacturing. They introduced the term “value stream” to depict an unhindered flow that generated value - they ditched the traditional large batch size paradigm used at the time in car manufacturing - and production in general - and started to experiment with the exact opposite approach: The _one-piece flow_.

### One-piece flow

The purpose of the one-piece flow was to scout for waste, unevenness and overburden in the value stream, it deliberately made problem surface early, as opposed to conceal or ignore them. And they strived to continuously improve and optimize the flow. A concept later know as _kaizen_.

Through, experiments, listening to all feedback and voices and continuously adapting and adjusting Toyota revolutionized the way car was manufactured and ignited a whole new paradigm for how to produce products with quality build-in.

A couple of decades after TPS and lean entered the scene, it had diffused into novel ideas within software development too. For decades software had been suffering from the misconception that software development adhere to a classic construction paradigm. Creating software the same way you would build a bridge or a skyscraper.

The iterative and incremental approach we know from agile emerged around the turn of the millennium and although it was an improvement over the traditional construction paradigm  - it was still hoked up on phases - but lean on the contrary was tied to the notion of a _flow_.

Leading software developers were asking themselves:

> “What if software isn’t really comparable to construction? What if it’s more comparable to manufacturing? What if it’s all about optimizing the flow?”

Software as a factory!

This thought was the _raison d'etre_ for new concepts in Software such as _lean software development_, _Continuous Delivery_ and _DevOps_.

## Business case for DevOps

 This deck of six slides explains the business case for the one-piece flow originally intgroduced by Toyota and ties the same argument into software development - where we call it a _pipeline_...

{% include gallery id="gallery" caption="Click on the first slide and browse through all six, while you read the caption on each slide." %}
<break clear="left"/>

## Large batch sizes in software development

A quite common approach to software development is _Waterfall_ or even _Scrum'ish_, _Agilefall_ or _Watergile_ development - all being approaches that does not really fall for the one-piece flow argument of building quality in, but rather adhere to a construction paradigm and try to glue quality on after the product is (supposed to be) finished. Often through late and comprehensive manual test efforts. Which of course will find tons of errors and then consequently everything loops back to the software developers, who need to dive into the code they wrote - probably months ago - to fix defects that was only discovered recently; during test.

This scenario is quite comparable to the effects shown in the slide deck above, where a production flow has too large batch sizes.

**Consider this:** Even a scrum team of 8-10 developers working in a 14-day sprint (batch size of 14?) that hands over the functional end-to-end test to a team of manual testers are piling up errors that loop back into the team. Just recall how many agile Scrum or SAFe teams that starts a new sprint with unconditionally accepting half of all the unfinished stuff from previous sprint directly into the new one.

## Unknowns

And then add to that, the complication that arise when they go into production only to discover that the resources set aside in the infrastructure are no way near what you expected, it turns out the system needs a truly elastic backend.

Infrastructure is not a _cost_ to be controlled. The CTO should't refer to the CFO. The technology is in the essence of the company's DNA - it's an _enabler_ to be exploited.

Or maybe the architecture of the whole construction is wrong - like:

> \- "You can't have a dedicated database for each user customer or a dedicated GPU for each online user - we need a true multi tenant system"<br/>&nbsp;<br/>
> \- "Eeeh - it worked fine on my machine - what's a multi tenant system?"

![Flying cow](/assets/images/devops-executives/cow-fly.jpg){: .align-left width="100"}
Sound like too basis examples? No, These are real examples, from real products with 1000's of users on their live systems, who simply discovered too late, that _"this cow is never going to fly"_ - it will crash!

## How To Get Away With Software

Build by small increments. Experiment. Work by _kanban,_ adhere to _kaizen_. Work as if you were optimizing a factory floor, not building a skyscraper. Break down tasks even further; only work on stuff that is truly important - as seen from the perspective of getting valuable end-user feedback. Deliberately make problems surface. Constantly improve on _waste_, _unevenness_ and _overburdenness_. Build a pipeline that never pass a defect on to the next _station_. Verify the work done by each station in the entire value stream. Make this an automated and automatically triggered event. Give developers unlimited access to _production-like_ environments (you probably need containers for that, so switch to Linux, if you haven't already). Kill the monolith; Only accept _individually releasable components_. Achieve this through adopting Semantic Versioning, artifact management systems, dependency maps and package mangers. Turn _anything_ into code for version control and programmable immutable reuse: Infrastructure, test, documentation, integration, reports, logs, data ...

_Anything as code_.

It sounds like a daunting task, doesn't it, but calm down, these are merely principles to follow. You don't need to do it all at once. If you start today - with your low hanging fruits - you'll see improvements already tomorrow.

If you don't do it, you are starring into a _Kodak Moment_ - not in the original meaning as a scenic ideal pretty-picture situation, but as a reference to Kodak - a successful company that got completely disrupted simply because they failed to look up - and keep up.

## Do you want more?

### Get perspective on a tech challenge

Let's grab a coffee. or a lunch - In real life - Away From Keyboard.

This is like a free coaching session - we will talk about you and your challenges - not us. We offer to be that (professional) shoulder you can cry on. Let go! We'll listen and support you, and offer perspective.

Hit the button and get access to our agenda, pick a time slot that suits you, and well get back to you.

[Book a coffee meeting](https://outlook.office365.com/owa/calendar/Lakruzz@Implementcg.onmicrosoft.com/bookings/s/OaPNUCshoUOBB9FTOQSSxQ2){: .btn .btn--warning target="_blank" title="Opens in a new tab"}

### Join our free masterclass "DevOps for Executives"

We have a [public free workshop](/events/2024/feb/devops-exec/) which is a shorter version - a dip of the finger - into a full day workshop especially designed for Executives who need to understand the nature and importance of Continuous Delivery and DevOps. We can also offer to come to you place and host this workshop for your managers and executives - for free - ably requirement is that gather at least 6 participants:

[Book a free 2 hrs Workshop](https://outlook.office365.com/owa/calendar/Lakruzz@Implementcg.onmicrosoft.com/bookings/s/wKPLdgQ9pE6V3-b40-G-Cg2){: .btn .btn--success target="_blank" title="Opens in a new tab"}

### DevOps you say? No Problemo - We’re SAFe®

[![dean](/assets/images/devops-executives/devopsyousay.png){: .align-left width="250"}](https://www.linkedin.com/pulse/devops-you-say-problemo-were-safe-lars-kruse/ "Click on the image to read the post on LinkedIn" ){: target="_blank"}<br clear="both"/>

> SAFe® The Scaled Agile Framework, that supposedly makes large organizations agile and lean is on the rise among late-majority and laggards, as it plays bingo with all the contemporary software industry buzz-words and gathers them all into one shiny graphical poster.

This is a link to a ≈20 min read - A blog post I published on LinkedIn, putting perspective on SAFe, RUP, Agile, DevOps and ends with an edifying dialog between a software developer and a senior lean software development advisor, starting at the point where the software developer who just raised her hands and victoriously announced that:

> “Yaaah - it works on my machine!”

[Head over to LinkedIn and read it]([https://outlook.office365.com/owa/calendar/Lakruzz@Implementcg.onmicrosoft.com/bookings/s/wKPLdgQ9pE6V3-b40-G-Cg2](https://www.linkedin.com/pulse/devops-you-say-problemo-were-safe-lars-kruse/)){: .btn .btn--info target="_blank" title="Opens in a new tab"}
