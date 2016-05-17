# dofi
rofi UI for managing simple todos

# Screenshot
![Screenshot]
(images/image.jpg)

# Features:

* Show your tasks (duh!)
* Basic tasks management (mark done, delete, set priority)
* Associate URLs with tasks (add, delete, open)

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

dofi also shows the associated URLs at the top of each items options screen. Since rofi only allows pango markup for its
message lines, another dependency was needed: out2html, which was created by rofi's author. On the plus side, this allows
for some coloring. Colors for the help texts are user configurable.

# Dependencies:

* gawk
* grep
* sed
* rofi
* linux-utils (column)
* out2html (for pango formatting of urls)

# Installation

1. Copy dofi to $PATH
2. Copy dofi.config to $HOME/.config/dofi/config
3. Run dofi
