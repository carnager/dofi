# dofi
dofi is a todo manager written in bash, using rofi

# Screenshots
![Screenshot]
(images/image.jpg)

![Details]
(images/image2.jpg)

![Agenda]
(images/agenda.jpg)

# Features:

* Show your tasks, colorized by priority
* Basic tasks management (mark done, delete, edit, set priority)
* Associate URLs with tasks (add, delete, open)
* Associate dates to tasks
* Agenda view

# Internals:

This tool is rather primitive. When creating new todos a flat textfile is created
in your notes directory. Filename is a timestamp with .todo extension.

The file looks like this:

```
abc: 3
caption: The Duke Spirit - Düsseldorf
group: +concert
tags: @live, @düsseldorf, @jan
url: https://www.eventim.de/the-duke-spirit-special-guest-riothorse-royale-duesseldorf-Tickets.html?affiliate=EVE&doc=artistPages%2Ftickets&fun=artist&action=tickets&key=1654921%247955928&jumpIn=yTix&kuid=27703&from=erdetaila
```

The field names have been choosen to be alphabetical. This way no complicated parser is needed to create
the visible one-line representation of each todo. The script simply strips away the linebreaks and replaces them with
tabs. After that gnu's column tool is used to create an aligned table.

dofi also shows the associated URLs at the top of each item's options screen. Since rofi only allows pango markup for its
message lines, another dependency was needed: out2html, which was created by rofi's author. On the plus side, this allows
for some coloring. Colors for the help texts are user configurable.

Default rofi call includes -regex and -tokenize arguments. These allow for powerful filtering. Since each line starts with the priority of the todo item
it's very easy to filter for tasks with a specific priority: `^1`

If you use proper symbols for groups and tags (I use *+* and *@*), you can filter this down very precisely: `^1 @vinyl` will show all todos which
have the tag *vinyl* and a priority of *1* associated with them.

The rofi command line options can be changed in the config file.

# Dependencies:

* gawk
* grep
* sed
* rofi
* linux-utils (column)
* out2html (for pango formatting of urls)

# Installation

1. Copy dofi to $PATH
2. Copy config.dofi to $HOME/.config/dofi/config
3. Run dofi
