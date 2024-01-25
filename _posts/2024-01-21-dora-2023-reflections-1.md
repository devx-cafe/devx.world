---
title:  "Google DORA 2023 reflections, Benefits of continuous delivery"
excerpt: "I reflect on some of the findings in the Google DORA 2023 report, with a surprise hidden in chapter 7"
search: true
author: Asser Fahrenholz
categories: 
  - Test & DevOps
hidden: false
published: true
tags:
  - DevOps
  - Lean
  - Agile  
header:
  teaser: /assets/images/posts/dora-2023-reflections-1/dora-reflections-1-header.jpg
gallery:
  - url: /assets/images/posts/dora-2023-reflections-1/dora-2023-tech-cap-results.png
    image_path: /assets/images/posts/dora-2023-reflections-1/dora-2023-tech-cap-results.png
    alt: "DORA 2023 tech capability results"
    title: "The results of the 2023 report, showing how tech capabilities drive software delivery performance"
  - url: /assets/images/posts/dora-2023-reflections-1/dora-2023-tech-cap-human-results.png
    image_path: /assets/images/posts/dora-2023-reflections-1/dora-2023-tech-cap-human-results.png
    alt: "DORA 2023 tech capability org results"
    title: "The results of the 2023 report, showing how tech capabilities drive organizational outcomes"
---

![image-center](/assets/images/posts/dora-2023-reflections-1/dora-reflections-1-header.jpg){: .align-center width="50%"}

I recently dived into the [2023 State of DevOps Report][1] and found a couple of things interesting.

Its no news that Technical Capabilities predict performance. This, I believe, has been at the center of most DevOps reports over the last decade.

When considering Continuous Delivery (the ability to release changes of all kinds on demand quickly, safely, and sustainably), its surprising that Continuous Integration (CI) and Trunk-based development (TD) has only a minor impact on software delivery performance, and perhaps even more surprising that Code Review Speed has a substantial impact on performance.

Perhaps CI and TD has taken a backseat to Static Code Analysis (SCA)-tooling. If your SCA is in place, CI and TD becomes less impactful? I'm not sure, but perhaps there's a correlation.

On the other hand, I would never have guessed that Code Review Speed has a greater impact on software delivery performance. Code review has never been a hot topic in the circles I've roamed, but with the advent of Social Coding and technology making it easier than ever to have the same outset for collaborating on single piece code, perhaps the cognitive load is now at a level where code reviews are doable in a much more lean fashion.

> _"We know that culture drives success. But what drives
culture? This is an interesting question with everyone’s
favorite answer: It depends!"_

Here are the summarized results of how tech capabilities drive performance, from the report:

{% include gallery id="gallery" caption="Slide deck" %}

What I could not have predicted by any measure, is that the data showed that documentation is absolutely key. The key takeaway being that quality  documentation drives successful implementation of tech capabilities and amplifies the impact these have on organizational performance. Quality documentation has a substantial impact on not only technical capabilities, but also personal wellbeing, team performance and organizational performance.

I've always believed in the value of traceability, and perhaps in the slipstream of technology, traceability and documentation mixes together. You can link your commits directly to issues, tag a colleague and link it to documentation as well. You can also comment code, with no impact on the artifact. In the end, communication becomes easier, but it also imposes a need for personal governance in terms of how to use the technology, because with modern software, there's no limits to what we can do.

For more information on good practices to drive quality documentation, see the [2021 report][2].

The report goes on to dive into Site Reliability Engineering and Flexible infrastructure, but that's out of scope for now. I will however, dive into the reports results on Culture (chapter 7) later on.

[1]: https://cloud.google.com/blog/products/devops-sre/announcing-the-2023-state-of-devops-report "2023 State of DevOps Report"
[2]: https://cloud.google.com/blog/products/devops-sre/announcing-dora-2021-accelerate-state-of-devops-report "2021 State of DevOps Report"
