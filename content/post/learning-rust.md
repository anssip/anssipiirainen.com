+++
draft = false
publishdate = "2024-05-16T08:43:02+03:00"
date = "2024-05-16T08:43:02+03:00"

title = "The most effective way to learn a programming language"

description = "How I used my hobby project as a learning ground for learningn the Rust programming language"

summary = "I implemented a simple password manager in Rust and learned a lot about the language in the process"

tags = ["code", "programming", "password-manager", "CLI", "Rust"]
keywords = ["programming", "rust"]

[amp]
    elements = []

[author]
    name = "Anssi Piirainen"
    homepage = "/"

[twitter]
    site = "@anssip"

[sitemap]
    changefreq = "monthly"
    priority = 0.5
    filename = "sitemap.xml"
+++

{{< amp-image alt="Eagle" src="/images/eagle.webp" with="400" height="400" >}}

{{< post-meta >}}

# The most effective way to learn a programming language

## Intro

So I decided to learn the Rust programming language and this is how I did it.

I started reading a book about Rust. I think it's a good way to start but it's not enough. You don't
really learn programming by just reading a book. You have to write code. I started writing a simple
password manager in Rust. I'm not sure how I came up with this project idea, but I guess it was because
I had been using several paid apps like BitWarden an Dashlane and I wanted to see if I could write
something to replace them.

So my setup was like this for the project: I had read the book a bit and my knowledge was very minimal.
Anyway I was able to get started with the project and managed to implement some basic features with
a lot of trial and error. I had to look up a lot of things on the internet and read the Rust documentation.
I was fighting a lot with the syntax and with the Rust borrow checker in particular. I think it's the
borrow checker and Rust's memory safety features that make Rust so hard to learn. But what really
surprised my that when I eventually got the program compiling, it was actually working and doing what
I wanted it to do. There usually was no need for debugging and troubleshooting. It just worked. This
got me very excited about Rust. This is a language that is very strict and hard to learn but once you
manage to get your code to compile, it's very likely that it will work as expected.

With my very basic understanding of Rust I was able to implement a simple password manager that worked.
I called it [Passlane and I made it available in Github](https://github.com/anssip/passlane).
It had all the features in place that I needed: I could add, edit and delete passwords. I could search
for passwords from the vault and use them. I could also generate new passwords. I was actually using
the program as a replacement for Dashlane.

At this point I actually stopped learning Rust for some months. I moved onto some other hobby projects
that happened to interest me more at the time.

## Coming back to Rust again

After a year I decided to come back to Rust and continue learning it. At this point I actually bought
some *physical* books from Amazon about Rust. Armed with these books I started reading them and learning
again, and I also started working on the password manager project again. This time I started heavily
refactoring the ugly code I had written earlier. I replaced huge parts of the code base as I learned
about Rust more. I learned more about traits, lifetimes, error handling, and many other things.
And as I learned I took another look at the password manager code base. When I was about async
programming I realized that for my CLI based project I didn't really need async. So I went ahead and
removed all async code and removed the Tokio runtime. As a result the code became much simpler.

When I learned about the `?` operator I went ahead and replaced all the `unwrap()` calls with `?`. I embraced
the Result type and implemented my own Error type and used it throughout the code base. Here again, this made
the code base simpler and simpler is usually better.

I learned more about the Rust module system and as a result I refactored the code base to use modules
and much smaller files. Again, an improvement.

I made a lot of rewriting and refactoring as you can see from the [commit history](https://github.com/anssip/passlane/commits/master/) of the project.
I also changed the functionality significantly by moving to Keepass as the storage backend in version 2.3.0 of the app.
I made this so that users could trust that i'm doing the right things to keep their data safe. I also
added support for **TOTP** codes (Timed One Time Passwords) which are used for 2nd factor authentication.

## Conclusions

My conclusion is this: When you learn programming you should write code as much as possible. At the same time,
read books and documentation. Use AI and chatbots to ask questions. Asking stuff from Copilot and ChatGPT
are actually very effective ways to learn, but that's a topic for another blog post.

## The project

I have my password manager [available in Github](https://github.com/anssip/passlane). It's called **Passlane** and at this point I'm quite proud of it.
I think the code can be still polished and improved but it's not bad at this point I would say. Check it out
and let me know how you like it!

