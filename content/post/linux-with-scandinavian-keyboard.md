+++
draft = false
publishdate = "2020-08-31T12:00:00+02:00"
date = "2020-08-31T08:43:02+03:00"

title = "Linux with a Scandinavian (Finnish) keyboard"

description = "How I configured linux to behave with a Finnish keyboard layout"

summary = "Linux is a pain when you try to use it with a non-US keyboard that has 'special' keys for example for the Scandinavian Å, Ä and Ö characters. This post explains how I got everything working like it should."

tags = ["linux", "autokey", "programming"]
keywords = ["linux"]

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

{{% amp-image alt="Knowledge is power" src="/images/sergi-kabrera-keyboard.jpg" width="700" height="450" %}}

{{% post-meta %}}

I recently switched to using Linux in my desktop computer that I use in my daily work. Getting the keyboard to work properly was probably the thing that took me the longest time to get right.

I am using an Apple keyboard with a Finnnish key layout. I am using a Macbook as my mobile computer and therefore I wanted to have a similar keyboard layout in this desktop computer. Switching between the two computers is easier if things are not too different between these two tools that I use. Typing comes mostly from muscle memory and typing speed suffers a lot if wrong characters start to appear on screen because of differemcess betweem the keyboard configurations.

Let's get to the dirty details on how I got things going.

## KDE Settings

I am using KDE as my desktop package and I have set it to use "Apple | Apple Aluminium (ANSI)" as the keyboard model in System Settings. The keyboard layout is set to "Finnish (classic)".

One would expect this to be enough and everything should just work (TM) as with the plain old Apple computers. But nope, with these settings I was not able to type square brackets, curly brackets, pipes, tildes etc. that one uses a lot when programming or working on the command line.

I got these "special characters" working using a tool called Autokey.

## Autokey

I am using [Autokey](https://github.com/autokey/autokey) for getting the special characters in their familiar places. Following shows all the Autokey scripts that I have in place:

```python
# at.py to send the '@' character
# Hotkey: <alt>+2
keyboard.send_keys("<backspace>@")

# backslach '\'
# Hotkey: <alt>+<shift>+7
keyboard.send_keys("<backspace>\\")

# left curly bracket '{'
# Hotkey: <alt>+<shift>+8
keyboard.send_keys("<backspace>{")

# right curly bracket '}'
# Hotkey: <alt>+<shift>+9
keyboard.send_keys("<backspace>}")

# dollar sign '$'
# Hotkey: <alt>+4
keyboard.send_keys("<backspace><shift>+4")

# pipe '|'
# Hotkey: <alt>+7
keyboard.send_keys("<backspace>|")

# left square bracket '['
# Hotkey: <alt>+8
keyboard.send_keys("<backspace>[")

# right square bracket ']'
# Hotkey: <alt>+9
keyboard.send_keys("<backspace>]")

# tilde '~'
# Hotkey: <alt>+]
keyboard.send_keys("~")

```

I am using `autokey-qt` which is a GUI tool that can be used to enter the scripts I listed above. There is also a GTK version called `autokey-gtk` version available for Gnome and other GTK based environments. One script is capable for handling only one character and therefore uou will need to have a separate script for each of them. You can record a hotkey shortcut for each of the scripts. In the screenshot below, you can see my `at.py` script which I have mapped to hotkey `<alt>+2`.

{{% amp-image alt="Knowledge is power" src="/images/autokey.jpg" width="700" height="450" %}}

As you can see, the script sends two different keys in sequence:

1. a backspace to wipe out the character that my keyboard normally sends when I press ALT + 2.
2. the character I want to be emitted when in press ALT + 2: the @ character.

## Make Autokey start when KDE starts

To finish the setup, we need to have Autokey starting automatically. To do so, I went to System Preferences / Autostart, and added `/usr/local/bin/autokey-qt` as a program that gets started automatically when the KDE desktop starts.
