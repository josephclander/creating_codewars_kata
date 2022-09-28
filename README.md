# Authored Kata: _Will I Pass?_

This is a Kata I am authoring for Codewars.

## Description

> "Am I gonna get in to Uni?!"

You're a teacher and your students are pulling their hair out trying to calculate the grades they need this summer to get into university. You have the list of results from last year and the grade their favourite uni expect them to get.

**Can you calculate if they will be able to get in?**

## Details

- You'll be given an array of the students scores from the first year's exams.
- Each paper has a maximum of 100 marks.
- The array will only contain integers from 0 to 100.
- Students will take between 1 to 5 exams inclusive, in the first year.
- They will never have taken all 6.
- They will have taken at least one exam.
- They are not able to retake exams.
- The grade boundaries are:
  - `A: 80+`, `B: 70+`, `C: 60+`, `D: 50+`, `E: 40+`
- The given target grade will always be one of 'A', 'B', 'C', 'D' or 'E'.
- You need to return a `boolean` value of `true` or `false`.

## Example

- Student

  - Their scores in the first year are: `5`, `30` and `0`.
  - They have 3 more exams left.
  - Their university requires a grade D.

  **Solution**

  - The minimum for a grade D is 50 marks.
  - Their current total is 35 marks (5 + 30 + 0).
  - With 3 exams left, they can get a maximum total score of 300 marks (3 \* 100).
  - This means they can finish with a maximum score of 335 marks (35 + 300).
  - From 6 exams they will need 300 marks (6 \* 50 marks) for a D overall.
  - **335 marks > 300 target so they can get into university!!!**
  - ✅ Return `true`

### Tags

- fundamentals

## How to Use

- It is assumed you have Ruby gem installed (3.0+)
- To install testing dependencies, in the terminal run:

```shell
bundle install
```

- `will_i_pass.rb` is a starter file.
- Code your solution in this file.
- In the terminal, run the following command from the root directory to see if you have succeeded:

```shell
rspec
```

A full solution can be found in the file `will_i_pass_solution.rb`.
