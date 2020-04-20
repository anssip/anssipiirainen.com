+++
draft = false
date = "2020-04-20T09:40:59+03:00"
publishdate = "2020-04-20T09:40:59+03:00"

title = "New Blog"

description = "Hacked up a new blog using Hugo."

summary = "Hacked up a new blog using Hugo."

tags = ["blog", "blogging", "hugo", "golang"]

keywords = ["blogging"]

[amp]
    elements = []

[author]
    name = "Anssi Piirainen"
    homepage = "/"

[image]
    src = ""

[twitter]
    title = "Built a new site with Hugo"
    url = ""
    description = ""
    image = ""
    site = "@anssip"

[sitemap]
    changefreq = "monthly"
    priority = 0.5
    filename = "sitemap.xml"
+++

# New Blog

A week ago I decided to set up a new website for this blog. Somehow I always have the urge to learn something new. Just programming with the same old tools and languages becomes boring and somehting new is needed to spice up my life.

This year I have been blogging more than ever and this is an area that I want to keep on doing also in the future. Up until this point, my blog was in Squarespace. I felt that I wanted to improve that: It should be easier for me to work on, and it should be also nicer and friendlier also for the reader. I also wanted to learn something new while building my new blogging "platform".

I ended up building this using [Hugo](https://gohugo.io/). Hugo is a static site generator and provides a "hands on" feel that is great for a developer. It's much different to the experience Squarespace gives: Squarespace has a graphical UI and all posting and management is done in that web interface. With hugo, things are done using a text editor and the command line interface. It provides a more developer-friendly experience.

Hugo is implemented using the Go programming language. I have some interest in learning Go which was one reason I ended up choosing Hugo.

## The result

As you can see from the looks of this site, this is quite bare bones. It looks nerdy. Just like I wanted it to look like :smile:

I have direct access to the CSS files, exactly like it should be when you want to also improve your CSS styling skills. The page templates are also there available for improvements whenever I feel the need to work on the site layout or on additional features. I could integrate a mailing list to this site eventually, for example. The [Go page templates](https://golang.org/pkg/text/template/) seem powerful.

I can write the blog posts using my favorite text editor. I write my blog posts in Markdown which is a format that Hugo directly understands. Previously I had to copy/paste all test to the Squarespace post UI and now, with Hugo, my workflow is more straightforward as the markdown file sits in Hugo's content directory all the time when I work on it.

One thing that I hope to still streamline: How to integrate Grammarly in this workflow?
