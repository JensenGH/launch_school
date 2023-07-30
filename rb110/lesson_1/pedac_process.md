# The PEDAC Process

## P: Understanding the Problem

- Establish the rules/ define the boundaries of the problem (examine/ analyze all info available)
  - Assess available information
  - Restate explicit requirements (clearly stated in problem description)
  - Identify implicit requirements (not stated in the description, but can be extrapolated from our understanding
of the problem based on problem analysis, test cases, examples, etc.)
- Spend sufficient time here to understand the problem. Don't rush this step.

**General Example**

Given a string, produce a new string with every other word removed.

- Explicit requirements:
  - Input: string
  - Output: new string
  - Remove every other word from input string

- Questions:
  - What do we mean by every other word? (does `other` have some different meaning?)
  - How do we define what a word in this context? (this may seem obvious, but not always the case)
    - Words are delimited by spaces (makes our understanding more explicit)


## E: Examples and Test Cases

- Can confirm/ refute assumptions
- Help to answer questions about implicit requirements
- Act as assertions which allow us to codify the rules and boundaries of our problem

## D: Data Structures

- Help reason with data logically
- Help interact with data at implementation level
- Thinking in terms of data structures is a part of the problem solving process
- Data structures closely linked to algorithm
    - Algorithm is a set of steps from input to output
      - Involves structuring data in a certain way

## A: Algorithms

- A logical sequence of steps for accomplishing a task or objective
  - Closely linked to data stuctures
  - Series of steps to structure data to produce the required output
- Write your algorithm in plain words, not code or even formal pseudo code.
- Keep the algorithm abstract/ high level (avoid implementation details such as reference to
particular methods or built in functions)
- Avoiding implementation details allows us to think more abstractly about the problem
- However, you can revisit algorithm during the implementation step either to update it or to make
implementation notes based on the algorithm.
- Don't worry about efficiency for now, the goal is to write an algorithm that solves the problem


## C: Implementing a solution in Code

- Translating solution algorithm to code
- Think about the algorithm in context of programming language
  - This involves thinking about language features and constraints
  - Characteristics of data structures
  - Built in functions/ methods
  - Syntax and coding patterns
- Create any test cases if necessary
- Code with intent

# Problem: Sum Even Number Rows

Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows,
with the first row containing one integer, the second row two integers, the third row three integers,
and so on. Given an integer representing the number of a particular row, return an integer 
representing the sum of all the integers in that row.

(all of the information below is available to us from our problem description)
(this brings clarity to our understanding of the problem, not an approach yet to solving the problem)

**Rules/ requirements**
- Sequence of even integers
- Sequence begins with two
- Integers are consecutive
- Sequence is grouped into rows
- Each row incrementally larger: 1, 2, 3, ...
- Row 'number' is equal to the number of elements in the row
  - Row 1 has 1 element, row 2 has 2 elements, row 3 has 3 elements, ...
  - Input: a single integer
    - Identified as a 'row', which is a subset of a sequence of integers
  - Output: a single integer
    - The sum of the integers in the row identified by the input integer

- Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...
2
4, 6
8, 10, 12
14, 16, 18, 20
...

How do we create the structure?

**Examples**

row number: 1 => sum of integers in row: 2
row number: 2 =>  sum of integers in row: 10
row number: 3 => sum of integers in row: 68

2 => 2
4, 6 => 10
14, 16, 18, 20 => 68

**Data Structure**

2
4, 6
8, 10, 12
14, 16, 18, 20
...

- Overall structure represents a sequence as a whole
- Individual rows within overal structure
- Individual rows in a set order in context of sequence
- Individual rows contain integers
- Can assume that integers are in a set order in the context of the sequence

[
  [2],
  [4, 6],
  [8, 10, 12],
  [14, 16, 18, 20],
  .....
]

**Algorithm**

1. Create an empty `rows` array to contain all of the rows
2. Create a `row` array and it to the overall `rows` array
3. Repeat step 2 until all the necessary rows have been created
4. Sum the final row
5. Return the sum of the final row

*Problem: Create a Row*

Rules:
- Row is an array
- Array contains integers
- Integers are even consecutive numbers
- Integers in each row form part of an overall sequence
- Rows are of different lengths
- Input: the information needed to create the output
    - The starting integer
    - The length of the row
- Output: the row itself: `[8, 10, 12]`

Examples:
start: 2, length: 1 => [2]
start: 4, length: 2 => [4, 6,]
start: 8, length: 3 => [8, 10, 12]
...

Data structures:
- An array of integers

Algorithm:
1. Create an empty `row` array to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence
  - All the rows have been created when the length of the `rows` array is equal to the input integer
4. Repeat steps 2 and 3 until the array has reached the correct length
5. Return the `row` array

## Final Thoughts

- Not a completely linear process
- Move back and forward between the steps
- Switch from implementation mode to abstract problem solving mode when necessary
- Don't try to problem solve at the code level