# Ruby on Rails - Ruby & Ruby on Rails Basics - Ruby Basics - Project

## Introduction

For today's challenge, you are going to set up some data and then use irb to perform some operations on that data.

In order to get started, you will first need to create a `candidates.rb` file. Inside that file, you will define three hashes: `jane`, `sara`, and `jason`. Each hash should contain all of the data as shown in the tables shown below:

**jane**:

| key            | value                | value type       |
| -------------- | -------------------- | ---------------- |
| first_name     | Jane                 | string           |
| last_name      | Doe                  | string           |
| level          | senior_level         | symbol           |
| age            | 30                   | integer          |
| occupation     | Software Developer   | string           |
| employed       | true                 | boolean          |
| current_salary | 125,000.00           | float            |
| languages      | Ruby, JavaScript, Go | array of strings |

---

**sara**:

| key            | value              | value type       |
| -------------- | ------------------ | ---------------- |
| first_name     | Sara               | string           |
| last_name      | Smith              | string           |
| level          | mid_level          | symbol           |
| age            | 26                 | integer          |
| occupation     | Software Developer | string           |
| employed       | true               | boolean          |
| current_salary | 80,000.00          | float            |
| languages      | Ruby, Python       | array of strings |

---

**jason**:

| key            | value       | value type       |
| -------------- | ----------- | ---------------- |
| first_name     | Jason       | string           |
| last_name      | Gray        | string           |
| level          | entry_level | symbol           |
| age            | 23          | integer          |
| occupation     | Student     | string           |
| employed       | false       | boolean          |
| current_salary | 0.00        | float            |
| languages      | C++, Python | array of strings |

---

### Instructions

#### Step One - Data Setup

1. Create `candidates.rb` file. ✅
2. Create 3 different hashes based on the table of data above and assign them to variables `jane`, `sara`, and `jason` (use symbol keys and no hashrockets). ✅
3. Paste all three hashes being assigned to variables into irb. ✅
4. Call each variable to make sure it exists and is assigned to the correct hash. ✅
5. Create an array named `candidates` that contains the three hashes (`jane`, `sara`, and `jason`). ✅!

#### Step Two - Average Age

We need to provide some analytics to our HR department about our job candidates. They want the average age of our current candidate pool.

1. Define a method named `average_age` that accepts an argument named `people`.

   - The method should iterate over the list of `people` passed into it, extracting their age values using `map`.
   - The method should then use `reduce` to sum all the ages
   - Finally, it should divide that sum by the size of the original `people` list to determine the average age

2. The result must be the floating point fractional average age (the division cannot be based on integer only divison) of the `people` passed into the method.
3. Run your newly defined method against the `candidates` list in irb and paste your method and the result into a new `average_age.rb` file

#### Step Three - Language Screening

We need to be able to filter our list of candidates based on the language we are hiring for. We want to find which candidates would be a good match for an interview.

1. Define a method named `language_screening` that accepts two arguments: `people` (an array) and `language` (a string).
2. Return the members of the `people` list that know the `language` that was passed in.

   - the language comparisons should be case insensitive

3. Call the method with the following options and past your results and the method itself into a file named `language_screening.rb`.

   - `language_screening(candidates, "Python")`
   - `language_screening(candidates, "GO")`
   - `language_screening(candidates, "javascript")`
