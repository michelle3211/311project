# Notes

Will add more after proposal feedback is returned

- relevant features that could be challenging to implement in another language:
e.g. we'd get a web crawler to visit other click bait pages, but we don't know their data types.
Good thing we have TypeScript which will take care of it

###### How would it actually work? Ideas?
Think of different processes we could use to showcase our TypeScript features.

1. User initiates process: button on our page
2. Go to a known, prolific websites: buzzfeed, upworthy
3. Scrape front page for headlines
4. pick out common phrases and build database of headline fragments to use (this could be hard)
5. Goto google news (or some news site), and randomly select phrases from real headlines
6. mix and mash with (4)
7. Display new headline on our site
8. optional next steps: make it into a clickable link to a true news story (warning: potential for something offensive generated)
9. Alternative: User inputs part of the info, e.g. "8 things you never though would..." + (5)


Oooh idea: start with a template:
[random integer] [noun] "s that you won't believe will " [verb] [noun]
That gives us some types... to check...? It's contrived, but it's something!
