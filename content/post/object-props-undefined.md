+++
draft = true
publishdate = "2020-07-09T10:00:32+02:00"
date = "2020-07-09T10:00:32+02:00"

title = "How to add object fields conditionally"

description = "A neat syntax for adding fields to object conditionally without polluting the object with undefined fields."

summary = "This blog entry shows a clean way to add properties to a JavaScript object conditionally, without polluting the object with undefined properties. This is the simplest and cleanest way I have seen to accomplish this."

tags = [ "javascript", "code", "programming" ]
keywords = ["programming"]

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

# How to add object fields conditionally

{{% post-meta %}}

I often run into a situation where I need to construct an object in JavaScript and this object needs to have member fields conditionally. This could be an options object that I am passing as a parameter to some other function or an API and these options need to be set only when I have values for those options available.

To make this clearer, let's take a look at an example with a straightforward syntax using if statements.

{{% amp-image alt="Mutation" src="/images/object-mutation.png" width="600" height="450" %}}

Here I'm mutating the object when I have option values available. [I don't like this kind of mutations](/post/fp-tricks-for-simple-code/).

Here is another attempt:

```javascript
const options = {
    key1: value1 || undefined;
    key2: value2 || undefined;
};
```

This "solution" pollutes the object with fields that have `undefined` values. The fields are there in the
object, just their values are set to undefined. You cannot be sure what happens when you pass this kind of an object to some library or an API: it might behave just find with this input, or you might get an error as a result, or worst it might work in some unpredictable ways.

Following is the cleanest syntax that I know of that solves these problems:

```javascript
const options = {
    …(value1 && { key1: value1 }),
    …(value2 && { key2: value2 })
    };
```

It uses the ES6 spread operator. It does not add unnecessary fields to the object. It does not use ugly if statements.

With the ES6 shorthand property syntax it looks even more clean:

{{% amp-image alt="screenshot" src="/images/address-object.png" width="600" height="450" %}}

I found this trick when I was looking at some code that my ex co-developer had produced, and have used it twice since I discovered it.
