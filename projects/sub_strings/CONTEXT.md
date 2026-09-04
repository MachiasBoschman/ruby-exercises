# Sub Strings

The Odin Project — Ruby course, *Basic Ruby Projects* (project 2 of 15).

- Lesson: <https://www.theodinproject.com/lessons/ruby-sub-strings>
- Source: [`ruby/basic_ruby_projects/project_sub_strings.md`](https://github.com/TheOdinProject/curriculum/blob/2efc3daa345132680746f4a8a56a3abe535fd1eb/ruby/basic_ruby_projects/project_sub_strings.md)
  in `TheOdinProject/curriculum` @ `2efc3daa34`
- Retrieved: 2026-09-04

Everything below this line is the lesson text, copied verbatim.

---

### Introduction

By now you should feel pretty good working with strings, arrays and hashes. We'll do a couple of classic "intro to programming" problems in the next few lessons to help solidify your knowledge and get warmed up to working on small projects. You'll need to rely on some of your basic knowledge of conditionals and flow control from the prep work but you shouldn't need to do anything you haven't seen before.

<div class="lesson-note" markdown="1">

#### Different ways of writing and running Ruby code

If you want to actually write and run your own Ruby code, you can either use IRB from the command line (type `irb` after the prompt), run it from a script file using `$ ruby ./your_file_name_in_the_current_directory.rb`, or use any other appropriate REPL.

</div>

### Assignment

<div class="lesson-content__panel" markdown="1">

1. Implement a method `#substrings` that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

   ```ruby
     > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
     => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
     > substrings("below", dictionary)
     => { "below" => 1, "low" => 1 }
   ```

   Next, make sure your method can handle multiple words:

   ```ruby
     > substrings("Howdy partner, sit down! How's it going?", dictionary)
     => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
   ```

   **Quick Tips:**

   - Recall how to turn strings into arrays and arrays into strings.

</div>
