% Background Report: TypeScript Webapp -- Linkbait Article Generator
% CPSC 311 Team T3
% November 16, 2015

Name:       Ashley Lee  
Ugrad ID:   k7y8  
Student ID: 34959122  
Email:      alee238@hotmail.com  

Name:       Min Seok Ray Roh  
Ugrad ID:   l9x9a  
Student ID: 33737123  
Email:      msroh94@gmail.com  

Name:       Michelle Wilson   
Ugrad ID:   a2d0b   
Student ID: 60855087  
Email:      m888wilson@gmail.com  

Name:       Cecile Leung  
Ugrad ID:   o8r6  
Student ID: 90600974  
Email:      cecilephl@gmail.com  

Name:       Norman Sue  
Ugrad ID:   h0e9  
Student ID: 20396131  
Email       normansue3@gmail.com  


# Project Overview

For the 100%-level milestone, we would complete the following:

1. Write and publish an `npm` module in TypeScript which generates a JSON representation of linkbait articles.
2. Write missing TypeScript type definition files for third-party `npm` modules that our `npm` module depends on.
3. Verify that all of our written TypeScript type definition files are bugfree with [tscheck](https://github.com/asgerf/tscheck).
4. Use our `npm` module to create a simple Node.js+Express API server that runs the web scraper code and sends the resulting JSON articles to the browser client.
5. Write a TypeScript single-page application client that utilizes the backend JSON and renders the article as a webpage.

An explanation of how what each of these components are and how they showcase specific TypeScript language features is given in the following subsections.

## Write and publish an `npm` module in TypeScript which generates a JSON representation of linkbait articles

We've chosen to publish our project as an `npm` module because, according to [modulecounts.com](http://www.modulecounts.com/), it's the most popular JavaScript (and thus TypeScript) package management format. By using a widely-accepted format, we can ensure the core functionality of our project can be reused by other programmers.

TypeScript language features to be used by the module:

Functions:

As TypeScript is a superscript of JavaScript, there are similarities between them, however, when writing the former, there are differences that will compile into the latter. These differences make give flexibility in writing functions. Functions in general build layers of abstraction, mimicking classes, information hiding, and module functionality. TypeScript functions share this with JavaScript, but they add new capability to JavaScript functions. Function types in TypeScript have two parts, the type of the arguments and the return type. The parameters are identified by type, so any name can be used, while return types are made clear with a '=>' symbol. TypeScript has type inference in the form of contextual typing, which helps cut down work needed to keep the program typed. Contextual typing happens when assigning a function to a variable with a type, but it only has types on one side of the assignment. Another feature of TypeScript is that every parameter is assumed to be required in a function, which will be checked by the compiler. Therefore, the number of parameters passed in, need to match the number assigned to the function. However, TypeScript allows optional parameters, and the ability to set a default if a parameter is not passed in. It also allows a user to pass in a list of parameters, known as rest, so that the function can use them as a group rather than individually. Rest parameters can be any size, even empty. TypeScript also solves the problem of using 'this' in JavaScript. TypeScript allows functions to bind to the right ‘this’ to use, simplifying the problem of having to know about what context it is when using it in a function. To conclude, while TypeScript builds off of JavaScript, it simplifies writing functions, which will compile into the more complex JavaScript at runtime. It allows for clearer typing than JavaScript, which makes it easier to maintain typed programs, and will reduce difficulty in coding our linkbait article generator. 


- TODO
- TODO

## Write missing TypeScript type definition files for third-party `npm` modules that our `npm` module depends on.

We plan on scraping the text content of existing websites in order to generate our own linkbait articles. This will require using the existing [pjscrape](https://github.com/nrabinowitz/pjscrape) JavaScript web scraping library. 

TODO: Explain and mention that `tscheck` is based on a paper https://cs.au.dk/~amoeller/papers/tscheck/paper.pdf

## Verify that all of our written TypeScript type definition files are bugfree with [tscheck](https://github.com/asgerf/tscheck).


## Use our `npm` module to create a simple Node.js+Express API server that runs the web scraper code and sends the resulting JSON articles to the browser client.


## Write a TypeScript single-page application client that utilizes the backend JSON and renders the article as a webpage.










# Project Value

Of the most popular compile-to-JS languages, TypeScript greatly lags behind in adoption and has significantly fewer exemplary repositories to draw inspiration from. There are currently 8,267 TypeScript repositories on GitHub, compared with the 1.7 million JavaScript and 54,605 CoffeeScript (the leading compile-to-JS language that competes with TypeScript) repositories.

Creating an additional TypeScript project provides future potential TypeScript programmers with an additional example of how they could utilize TypeScript's static typing features. 

TODO: Add reference to research paper about how using a typed language increased productivity and make comment about how that adds value.

# Project Importance
#### Background
Clickbait is a term for headlines that catch people's attention and curiosity enough for them to follow a link. The main goal is for the user to click through to the target website. Secondary is the content, which has a reputation for being of very low quality. They exist due to a business model whereby the more visitors there are to a website, the more advertisers are willing to pay to use that site. Ads on that site gain more visibility with each visitor and can have further referral links. More visitors can also affect a site's rank when it shows up on search results due to search engine optimization (SEO) rules. Therefore, any click-through on a link can have compounding effects on visibility and subsequently revenue from advertising.

#### Negatives and possible positive side-effects
Clickbait (also known as linkbait) has a reputation for having low quality content on their target sites. The headline may read like news, but the articles are often hastily created with little research, no insight, misleading information, or they can be outright advertisements masquerading as impartial articles. Consumers may become annoyed at seeing them, resulting in backlash [@333]. It can also affect the way content is created, encouraging poor journalism [@334]. So, there is little _inherent_ value to creating clickbait. However, we may gain some beneficial knowledge as a byproduct. Creating successful clickbait involves the psychology of curiosity and persuasion. If we can learn more about what works, we can put it to good use (without annoying the readership) by providing high quality content at the target site. For example, actual information.

#### Our perspective
We originally chose this as our application because it would be an amusing way to showcase the features of TypeScript. However, it could be extended to track data on which generated headlines are successful (number of click throughs and duration spent on target site). This information could be used to learn how to best reach certain audiences and how to best spread certain types of information. It could be anything from public health outreach, to how undergrads can apply for co-op. Another possible benefit is that our team could sign up for ad revenue and make money for this project.

**References for this section**

[@333]
"Saving Us From Ourselves: The Anti-Clickbait Movement." _Daily Beast_. Emily Shire. 14 Jul 2014. 16 Nov 2015. <http://www.thedailybeast.com/articles/2014/07/14/saving-us-from-ourselves-the-anti-clickbait-movement.html>

[@334]
"Clickbait: The changing face of online journalism." _BBC News_. Ben Frampton. 14 Sep 2015. 16 Nov 2015. <http://www.bbc.com/news/uk-wales-34213693>

# Project Impact

Standardized support for writing TypeScript `npm` modules that compile to JavaScript by using [tsconfig.json files](https://github.com/Microsoft/TypeScript/wiki/tsconfig.json) to integrate with existing JavaScript and TypeScript `npm` modules has only been added [4 months ago in TypeScript 1.5](https://github.com/Microsoft/TypeScript/wiki/What's-new-in-TypeScript#typescript-15).

By publishing a library using this relatively-new build process, we are contributing to the TypeScript community by providing an additional working example of how to use this new build feature of the language, since there are only [678 results](https://github.com/search?l=typescript&q=tsconfig&type=Code&utf8=%E2%9C%93) when searching for GitHub code that use tsconfig.json files.

















-------

### Reminders of Specific Requirements

>> show the respective language features

>> describe, at a high level, a project on this topic that could satisfy the 100% level goals.

>> Potential project—the one you'd do for the 100% level—is described in the context of the project topic. 


>> Novel technical aspects of the project topic are summarized using appropriate programming languages terminology

>> The technical aspects you describe should include any needed for the project proof-of-concept and plan, even if you're stopping at the 80% level.)



>> value in everyday programming practice

>> you must base that description on existing work. How much? That will differ from project to project, but we'll try to quantify by saying "at least the equivalent of three CS conference research papers used suitably to support your description"

>> perhaps because of industrial or research impact
>> relate your topic to its context (e.g., similar languages, analyses, semantic forms, or other projects and ideas). 
>> Project topic is well-situated in its context (i.e., similar languages, analyses, or language features, depending on your topic).






>> Explaining why the language is suitable for the project (in part, by comparing it to other, somewhat similar  languages) would be part of putting the project in context.  For example, if I were doing a project in Haskell that used lazy evaluation to traverse an infinite decision tree, I might discuss why lazy evaluation is well-suited, and point out that SML and Racket are less well-suited because they aren't lazy.


### Unsorted refs


@100 http://noeticforce.com/alternative-programming-languages-that-compile-to-javascript



### Possible refs

https://users.soe.ucsc.edu/~abadi/Papers/FTS-submitted.pdf


### Ideas for pivoting main project idea to better suit requirements

- dynamic type discoverer
- metaprogramming something
- news article scraper with type checking

### Misc Ideas

Ideas:

- find specific GitHub Issues of existing JS projects with `TypeError` or other runtime-related errors that could be prevented with TS
    - Q: What specific `Error`s does TS prevent?

- ES6
