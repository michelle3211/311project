# CPSC 311 Project Proposal

Name:       Ashley Lee  
ugrad ID:   k7y8  
Student ID: 34959122  
Email:      alee238@hotmail.com  

Name:       Min Seok Ray Roh  
ugrad ID:   l9x9a  
Student ID: 33737123  
Email:      msroh94@gmail.com  

Name:       Michelle Wilson    
ugrad ID:   a2d0b   
Student ID: 60855087
Email:      m888wilson@gmail.com 

Name:       Cecile Leung    
ugrad ID:   o8r6    
Student ID: 90600974    
Email:      cecilephl@gmail.com    

Name:       Norman Sue      
ugrad ID:   h0e9  
Student ID: 20396131  
Email       normansue3@gmail.com    

# Overview

We're choosing project type 3 by researching the TypeScript language and implementing a substantial web application using the language-specific knowledge we've gained. Additionally, we will compare our TypeScript program against a JavaScript version to showcase the advantages of TypeScript.

## `project-background`

The following sections list the TypeScript topics that we'll research. After doing individual reading, we will meet before the weekend to figure out how to put it together. We will write our research in separate text files and then combine it and format it for the research report by November 12. We will include snippets of code to demonstrate our understanding of the language features.

### Michelle

- Basic Types
- Interfaces
- Classes

### Cecile

- Generics
- Mixins

### Ashley

- Namespaces and Modules
- Functions

### Ray

- Type Inference
- Writing Definition (.d.ts) Files

### Norman

- Type Compatibility
- How TS preserves runtime behavior of all JavaScript code
- How does TS align with current and future ECMAScript 6 proposals

## How we'll meet the 100%

We will be writing a web application which will use all of the features that we will be researching in the breakdown in the previous section.

## `project-plan-proof`

After writing the background research report, we will write and implement the TypeScript classes with the associated type definition files (`*.d.ts`) to showcase all the features of the language that we want to use in the 100% deliverable.

## Poster

We will have snippets of code on our poster comparing JavaScript and TypeScript, using the features that we've researched to show how they're beneficial to the programmer.

## `project-final`




### Web app topic


Our goal is to use more of the TS-specific features for our webapp.

Ideas:

1. People can't get into classes because they clash.
2. UBC course database access?
3. Movie recommendation system
    - Use some 3rd-party recommendation API
4. Game
    - quiz
5. Data searching
6. Trivia API
7. Choose your own adventure
8. Instagram API for pictures
9. Clickbait article generator (most likely topic)
    - generate article
    - choose picture with some API
10. Meme generator


## Server-side 

- Possible idea: no server-side component, and only client-side front-end TS/JS.


- Are we going to have a database?
    - If not, we will need hardcoded data
- Ashley: currently doing something with Node.js and Express.js in another project, so probably can do the server-side stuff

## Client-side

Possible technologies to use:
- Bootstrap
- jQuery
- Who wants to do the UI layout with the HTML and CSS?

```html
    <form>...</form>
```


## Miscellaneous Comments

- Michelle: found lots of information about how TS is stronger/better than JS

### From Microsoft TypeScript Design Goals 

Question: Which of the following design goals do we want to follow/showcase?

1. Statically identify constructs that are likely to be errors.
2. Provide a structuring mechanism for larger pieces of code.
3. Impose no runtime overhead on emitted programs.
4. ~~Emit clean, idiomatic, recognizable JavaScript code. (Automatic)~~
5. ~~Produce a language that is composable and easy to reason about.~~
6. Align with current and future ECMAScript proposals. 
7. Preserve runtime behavior of all JavaScript code.
8. Avoid adding expression-level syntax.
9. Use a consistent, fully erasable, structural type system.
10. Be a cross-platform development tool.
11. Do not cause substantial breaking changes from TypeScript 1.0.
