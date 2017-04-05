# Technical Interview

As a manager, you might be interested in applying for technical companies. In that case, you have a chance of being confronted by technical questions. That's why today we will learn about what a technical interview looks like and what you should be prepared for as a manager.

## What you will learn today
* What is an engineer technical interview
* What to expect from a technical interview as a manager
* Practice one typical exercise

## Typical engineer interview
A typical on-site interview can range from 1-5 hours; but is typically divided into 2 parts. An introduction/cultural fit portion, and the technical portion. The technical portion can be pair programming, an online coding challenge, whiteboarding, architecture overview, high-level conceptual questions, or a live demo and conversation of a project the candidate has previously worked on. We will cover each part so that you have a good overview of what an engineer interview looks like.

### Introduction / Cultural fit
This is an engineer's or manager's opportunity to demonstrate their soft skills, which many would argue are just as crucial as technical ability. Companies want a team player who knows how to communicate well, and who people enjoy working alongside with. Also, more and more companies (especially startups) look for candidates who are mission-driven.

### Coding Challenges
Typically each coding challenge portion in an on-site is between 30 mins to an hour. You may have several technical coding portions.

#### Pair programming
This is when you code alongside your interviewer. In a typical scenario, there may be a 'driver' and a 'navigator' where the navigator is telling the driver what to code, and the driver is actually typing the code in. In an interview scenario you most likely wouldn't have this driver-navigator divide, since after all, you are the focal point. However, these are meant to be collaborative, and test the engineers ability to communicate clearly and be a team player.

#### Online coding challenge
Oftentimes the interviewer will share a link to a platform where the candidate will need to solve a challenge online, on a shared screen where the interviewer can see as the candidate is typing code. Oftentimes the candidate will still be able to resort to Google for help with syntax, but might get docked points if they overly rely on googling. Sometimes the coding platforms will not be as nice as your own workspace; Google is notorious for sending candidates a simple google doc with 0 syntax highlighting.

#### Whiteboarding
Did you know that code can also be written on a piece of paper, or even a whiteboard? Whiteboarding challenges are oftentimes the most feared coding challenges, since you have no syntax highlighting, and the environment is much different from your every day routine. Again, this is another opportunity for the interviewer to get a grasp of how well the candidate communicates, and how well her or she understands high level concepts, and how they go about reasoning with a problem. Certain companies have even been known to given candidates a problem with no possible solution, with the objective of seeing how they go about trying to obtain a solution, and to see how they react when they do not find one. Do they keep trying different strategies, or do they break down and start getting frustrated?

#### Architecture Overview
Typically a candidate can best express the architecture of an app through drawing a diagram. The initial question might be "Give me a top level diagram of how you would design an e-commerce platform." From there the candidate is expected to draw a diagram that shows how the client and server interact, along with the database, a cache (if you choose to include one), and any other services or web API integrations. A candidate who truly understands the big picture, can clearly talk through the process as they draw the diagram.

#### Conceptual Questions
What is the difference between Angular and React? In what situations would you use a relational database vs a non-relational database? What is an ORM? What is dirty checking in Angular? The list goes on...

#### Live Demo
Each software engineering candidate, or even product manager, should have at least one recent project that they can comfortably give a live demo of. A quick and simple description of what the app or website is, is sufficient; what is more interesting is the conversation around the technologies used (and why those), how you set up the database, and what the biggest technical challenges were. For a product manager, the conversation may revolve more around the product decisions- how did you prioritize what to build first? What is an example of a feature you chose to leave out, and why? How well did the team work together, and how could you remove future roadblocks?

#### Example Technical Challenges

- Reverse a string two different ways iteratively and one way recursively. Which solution is most efficient and why?

- Write an algorithm in Java or C++ to find the power set of a given set. For example if S = [a,b] the power set is P = [[],[a],[b],[a,b]] (you can also choose any of your favorite programming language)

- Write an algorithm in Java to find out whether a binary tree is a mirror image of itself or not. What is the algorithmic complexity of your solution?

- Implement your own hashtable in C++ or Java.

- Write an algorithm to determine the number of occurrences of a number in a sorted array. Is there a more efficient way of implementing this?

- Implement a generic LRU cache in the language of your choice.

- Write a program to solve a Rubik's cube in any programming language.


#### Interviewee questions
The final 5 minutes are reserved for the interviewee to ask questions. Some examples of good ones:
- How does the typical production workflow look? How often is code pushed to production (live)?
- What is the project management process you use - do you use Agile or Scrum?
- How is the test coverage?
- How is the engineering team organized/structured? Are there sub-teams?

## What to expect as a manager
As a manager, you won't have questions that are that technically complicated. However it might happen that your interviewer asks you questions about your technical background and want to verify it.

### Easier technical questions

- Write a maxNum function that accepts an array of integers, and returns the largest integer
- Write a class Dog, that has one function bark, which will print "Woof!"
- Write a function add, that accepts two numbers, and returns the sum.
- Write a function that takes a string, and returns that string in snake format. snakeFormat('examplestring') => 'eXaMpLeStRiNg'

### Advice
- Ask clarifying questions before you just jump into the code, make sure you understand your challenge 100% before starting. Some interviewers will keep their instructions vague, to see if the interviewee will ask good clarifying questions.
- Never get frustrated or angry. Show persistance, and only give up if you absolutely are stuck.
- Always talk through your thoughts. Even if you had initial thoughts on how to solve a problem, which you realize are not correct, be sure to mention them to your interviewer and demonstrate an understanding of _why_ they are not an ideal solution.
- Write pseudocode before you jump into code. Pseudocode is step by step plain text description of your solution. This way you can stay organized, and demonstrate to the interviewer that you understand the bulk of the problem, and have a clear and systematic thought process. With great pseudocode, your interviewer may even choose to accept it as a solid answer, and will choose to move on before you even get to the code!
- Always try to get the most simple solution down first. _Then_ go for optimizations, and handle for edge cases. Edge cases are strange inputs that are different in format, and may result in an error. For example, if your input expects an array of integers, what happens when your array is [], or when it is [-1,-1,-1,-1]... will your function still work?

## Challenge

Good Luck!
