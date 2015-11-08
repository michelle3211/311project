# CPSC 311 Project Proposal (Team T3)

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

**Project Type:** 3  
**Project Topic:** TypeScript  
**Target Completion Level:** 100%  

Our group will research features of the TypeScript language and use the knowledge gained to build a substantial web application that generates "linkbait articles".

Additionally, we will compare our TypeScript program against a JavaScript version to showcase the advantages of TypeScript.

## Background Research Report `project-background`

For our background research report, we plan to do further research based on the topics listed in Microsoft's official TypeScript GitHub wiki [page](https://github.com/Microsoft/TypeScript/wiki) and have divvied up the topics as follows:

Michelle

- Basic Types
- Interfaces
- Classes

Cecile

- Generics
- Mixins

Ashley

- Namespaces and Modules
- Functions

Ray

- Type Inference
- Writing Type Definition Files

Norman

- Type Compatibility
- How TS preserves runtime behavior of all JavaScript code
- How TS aligns with current and future ECMAScript proposals

After doing individual reading, we individually type up our findings in separate plaintext files, and then meet on November 13 to combine the content and format it to produce the background research report. 

We'll include snippets of code executable TypeScript code to demonstrate our understanding of the language features that we're researching.

Starting point documents for our research

- http://learnxinyminutes.com/docs/typescript/
- https://github.com/Microsoft/TypeScript/blob/master/doc/spec.md
- https://github.com/Microsoft/TypeScript/wiki/TypeScript-Design-Goals
- https://github.com/Microsoft/TypeScript/wiki
- http://www.typescriptlang.org/Handbook
- http://www.definitelytyped.org/

## Proof-of-Concept and Plan `project-plan-proof`

After writing the background research report, we will write and implement the necessary TypeScript modules and classes with the associated type definition files (`.d.ts` files) to showcase all the features of the language that we want to use in the 100% deliverable web application.

Simultaneously, we will also write the less-type-safe JavaScript analogue classes for the ones we write in TypeScript. Since TypeScript compiles to JavaScript, this means we will have two sets of JavaScript files: one that is type safe and compiled from the TypeScript we will write, and another that is written from scratch without the type safeness and advanced features that TypeScript provides.

## Poster

Our poster will have snippets of code from our proof-of-concept classes comparing JavaScript and TypeScript, using the features that we've researched to show how they're beneficial to the programmer.

## `project-final`

Using the TypeScript modules and class files built for our proof-of-concept, we will implement the remaining parts of the web application that will generate linkbait articles. 



Our goal is to use more of the TS-specific features for our webapp.

Ideas:

1. Clickbait article generator (most likely topic)
    - generate article
    - choose picture with some API

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
