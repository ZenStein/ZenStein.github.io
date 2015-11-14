# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
    end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.
# 2. What is the line number where the error occurs?
#    172, so it says. actual error is on l:16 there was no end on the while loop
# 3. What is the type of error message?
#    syntax
# 4. What additional information does the interpreter provide about this type of error?
#    unexpected end-of-input
# 5. Where is the error in the code?
#    added fix in line 16, needed an 'end' on the while loop
# 6. Why did the interpreter give you this error?
#    Author forgot to put the 'end'

# --- error -------------------------------------------------------

south_park = 'sometimes funny';

# 1. What is the line number where the error occurs?
#    36
# 2. What is the type of error message?
#    'in <main>'
# 3. What additional information does the interpreter provide about this type of error?
#    undefined local var.
# 4. Where is the error in the code?
#    l:36
# 5. Why did the interpreter give you this error?
#    there was never a value assigned to variable 'south_park'

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#     51
# 2. What is the type of error message?
#    'in <main>'
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method cartman.
# 4. Where is the error in the code?
#    l:51
# 5. Why did the interpreter give you this error?
#   no definition for the method cartman.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    l:70
# 2. What is the type of error message?
#    in <cartmans_phrase>, in <main>
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of args
# 4. Where is the error in the code?
#    l:70
# 5. Why did the interpreter give you this error?
#   did not specify any parameters in def.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

#cartman_says

# 1. What is the line number where the error occurs?
#    l:89
# 2. What is the type of error message?
#    in <cartman_says> in <main>
# 3. What additional information does the interpreter provide about this type of error?
#    wrongnumber of args
# 4. Where is the error in the code?
#    l:89
# 5. Why did the interpreter give you this error?
#    didn't pass any arguments to the method



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#    l:106
# 2. What is the type of error message?
#    in cartmans_lie in main
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of args
# 4. Where is the error in the code?
#    l:110
# 5. Why did the interpreter give you this error?
#    didn't pass in 2nd argument: name

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#    l:125
# 2. What is the type of error message?
#    in * in main
# 3. What additional information does the interpreter provide about this type of error?
#    String can't be coerced into Fixnum
# 4. Where is the error in the code?
#    l:125
# 5. Why did the interpreter give you this error?
#    you can't times a string by a number

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#    l:140
# 2. What is the type of error message?
#   in / in main
# 3. What additional information does the interpreter provide about this type of error?
#    didsion by 0
# 4. Where is the error in the code?
#    l:140
# 5. Why did the interpreter give you this error?
#    computers can't divide by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    l:156
# 2. What is the type of error message?
#    in require_relative in main
# 3. What additional information does the interpreter provide about this type of error?
#    cannot load such a file
# 4. Where is the error in the code?
#    l:156
# 5. Why did the interpreter give you this error?
#    there is no file named cartmans_essay.md in the directory that this file is in.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
# the one where the end on the while loop was forgot. This instance gave an error
# on the last line of the file, which wasnt the case.
#How did you figure out what the issue with the error was?
#  it says it was expecting an end, so I looked for what was being called, and
#  tried to look for a missing end statement
#Were you able to determine why each error message happened based on the code?
#  yes.
#When you encounter errors in your future code, what process will you follow to help you debug?
#  fist look at type and additional info, and taking the given line with a grain of salt.