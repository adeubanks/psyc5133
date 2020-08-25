####### UARK PSYC 5133 ####### 
# Fall 2020
# Drill 1
# Authored by: Austin Eubanks
##############################.

#### 1. Getting started ---- 

## 1.1 Rstudio panes/appearance ----

# This is an R script, a file in which you can store commands for repeated use

# There is also a console in which you can run commands at a prompt rather than
# storing them for re-use

# Preferences
    # e.g., color, pane arrangement

## 1.2 Important general notes ----

# In a script, placing the cursor on a line and hitting CTRL+ENTER (Windows) or 
# CMD+ENTER (Mac) will execute the command on that line; the output will be
# displayed in the console

## R is case sensitive. 
## R does not read spaces; they are only there to improve readability.
## All forms of brackets, ( ), [ ], { }, must come in PAIRS. If you leave one
##      out, R will yell at you for it. 
## Don't reinvent the wheel. (Copy and paste is your friend.)

# Note about functions: most of what you do in R will be executing functions;
# you give a function something, it gives you something back in return. The
# things you give to a function are called arguments, and they typically will
# appear in parentheses following a function's name; some functions can take
# empty arguments, like sessionInfo(). You'll learn more about functions and
# arguments later.

sessionInfo()

## 1.3 Not your twitter's hashtag ----

# The pound sign/"hashtag" is used for comments. (Fun fact, on a phone, it's
# official name is an octothorpe... The more you know --*). Anything that comes
# after a # is not read by R. We'll discuss this more later.

# If a line end with 4 #s or 4 hyphens (----), it will be collapsible. You can
# use this feature to make going through your scripts much easier. For instance,
# a homework assignment may look like this:

#### Example question 1 ####
# stuff
# answers

#### Example question 2 ####
# more answers

# As you see above, if you click the triangle beside Question 1, it collapses
# between there and the next set of 4 #s. Keeping your script easy to read and
# navigate becomes more and more important as scripts get longer and more
# complex.

## 1.4 Adjusting text width ----
# When writing R code, there is no limit to how long (to the side) a line will
# go. So it's important that you keep line length reasonable (~80 characters),
# so you can fit it on one screen, and avoid having to scroll over to see
# anything.


## R has a keyboard shortcut that will "reflow" long comments, which
## means it will automatically adjust and wrap comments. For Macs, the
## shortcut is (control + shift + / ). For Windows, (Ctrl + shift + / ).

    ## This reflow command is "mindful" of the formatting of your #s too. Notice
    ## this section is indented once and has ##,

# whereas this section has a single # and not indented (just a space). Reflow
# will match whatever format you start with.

#even if you don't have any spaces to start with (which isn't a great thing
#because it reduces readability of the script).



#### 2. R operations ----

## 2.1 Arithmetic operators ----

2 + 6 # Addition

9 - 2 # Subtraction

4 * 9 # Multiplication

8 / 2 # Division

9 %% 4 # Modulo (i.e., remainder)

5^2 # Exponentiation 

sqrt(25) # Square root

# PRACTICE: check to make sure R follows the order of operations correctly using
# a three-operand expression like 2 + 3 * 4






# Use spaces before/after all infix operators (=, +, -, <, >, etc.) for
# clarity (unless it is a negative sign).

3--5    # Bad
3 - -5  # Good
(8+4)/(5-2)+5  # This will run, but is bad (hard to read)
(8 + 4) / (5 - 2) + 5  # Same answer, but better code writing.


## 2.2 Relational operators ----
# Inequalities return Boolean Logic values ("TRUE" or "FALSE")

5 < 2 # "less than or equal to" is written: <=
5 > 2 # "greater than or equal to" is written: >=

# To test if something is exactly equal to something else, use two equal signs.
# Exclamation points mean "not". (Also, for later, as logic operators, "AND" is
# &, "OR" is | (i.e., the \ button if you hit shift))

5 == 2
5 == 5
5 != 2



#### 3. R objects: assigning a value to a variable ----

# You can create and store "objects" with the assignment operator <- or ->. The
# arrow points in the direction of the assignment. You can use a keyboard
# shortcut to produce a left-pointing assignment operator. Mac: option + -
# (minus sign); Windows: Alt + - (minus sign). Note when you do this, it
# automatically adds a space before and after the arrow, as you should do
# (remember, spacing = readability).

a <- 5
b <- 3

# We have now assigned a the value of 5, and b the value of 3. If you run a line
# with a variable name, it'll display what value that variable holds. You can
# check for yourself...

a
b

# You can do arithmetic using variables, and also store the output as a new
# object. Notice when we create new objects, they appear in the Environment
# pane of our workspace.

a + 2
a * b
b >= 9

c <- a * b

c

# Technically you can also use a single equal sign (a = 5), but you will NEVER
# do that (say it with me... "I will NEVER use an equals sign as an assignment
# operator") because it can cause confusion later. 


#### 4. Helping yourself ----

# If you find yourself in need of help, try adding a question mark before a
# function to pull up the help for that particular function. If one doesn't
# work, try two-- one will only work when trying to find the help on a
# function of a library that is currently loaded. Two question marks will pull
# up anything (if there is anything in the help/documentation).

?abs()

?describe()
??describe()

# Beyond the built-in R help, there is a vast amount of resources online...
# Indeed, this is why R is one of the fastest growing programming languages
# (along with Python). Google is your friend. GOOGLE IS YOUR FRIEND. 
# G O O G L E   I S   Y O U R    F R I E N D. I can't stress this enough...
# Do not feel like you are "not getting it" or "struggling" because you are 
# referencing Google, cheat sheets, notes, help/documentation, etc. There is 
# far more information about R and all of its various packages and such than
# one person could possibly retain in their memory. Even people with exceptional 
# R skills, and extensive amounts of time spent in R use references and look things
# up. We will talk more about ways to find answers to questions in the Q&A, and in
# the future.


#### 5. What's in a name? ----

# As we go through this year, it'll become clear to you why it is important to
# have (and stick to) naming conventions. You'll have some flexibility in how
# you choose to write you code, but there are some guidelines at least. 


# My $0.02 (a note on my particular conventions)
    # case
    # systematic
        # to work with (names)
        # for meaning (e.g., ".r" ".mc")

## Variable names should be meaningful, yet concise... You'll be typing these
## names *a lot*, and if you name your variable
## log.transformed.reverse.scored.anxiety.item.4, you're going to have a bad
## time. At the same time, naming it "var1" doesn't help that much either.
## Also, objects CANNOT** begin with digits, only characters. 

            # **technically they can if you are working in the tidyverse, but
            # that's a lesson for another day.


## Whatever you'd call this:
thiscouldbeavariablename <- "variable value" # --or--
THISCOULDBEAVARIABLENAME <- "variable value" 

## Camel case is when the first letter of parts of a name are capitalized but
## everything else is lowercase

ThisCouldBeAVariableName <- "variable value"

## "Snake case" is a naming convention wherein you use lowercase letters divided
## by periods/underscores

this.could.be.a.variable.name <- "variable value" # <- what I prefer (besides it 
                                                  #     obviously being too long)
this_could_be_a_variable_name <- "variable value" #  <- what is more popular


# PRACTICE: create a variable using the name of your favorite month and store
# the number of that month in it (January is 1, February is 2, etc.)







#### 6. Using R Projects ----

### First, we need to talk "working directory"

    # The working directory is where R looks to get/put stuff by default unless
    # it's told otherwise.

    # By default your working directory is your computer's "home directory." For
    # instance, on my Mac, the default working directory is:

getwd() # This shows your current working directory. 

# But that's not really where I keep/save stuff. A more typical looking
# directory might be something like
"/Users/Austin/Documents/School/Stats/PSYC 5133/Week 1"

    # So say you download a data file called "datafile1.csv" and put it in your
    # "Week 1" folder. Then you want to load it in R, so there is a function
    # read_csv() that you'd use. However, if you just type
    # read_csv("datafile1.csv") R will look in the working directory for that
    # file. But, since you left it in your Week 1 folder, you'd actually have to
    # type read_csv("~/Documents/School/Stats/PSYC 5133/Week 1/datafile1.csv")

            # ** Note: In file paths, a tilde (~) is shorthand for "home
            # directory," so "~/Desktop" is the same as "Users/Austin/Desktop"
            # for instance.

    # Also, say we wanted to export some data (let's say it's an object called
    # homework.data) and save it as a .csv file. We'd use
    # write_csv(homework.data, "new.filename.csv"). But again, that would create
    # a .csv file called "new.filename" in the working directory, which isn't
    # where I want it. Instead, it'd need to be 
    # write_csv(homework.data, "~/Documents/School/Stats/PSYC 5133/Week 1/new.filename.csv")


# So one way to get around this is to use setwd() every time you open R to
# change where your working directory is. If I ran
setwd("~/Documents/School/Stats/PSYC 5133/Week 1/")
# then using read_csv() would automatically look for files in that folder, and
# write_csv() would export files to that folder, etc. 



# But, why are we talking about working directories anyway? Well, we will be
# working with R projects, and automatically setting working directories is one
# of the nice features of R projects. R projects is a way of having
# self-contained projects that maintain consistency with your settings, data,
# script, etc.

    # Side note: What about moving files? (Answer: Not a problem if you're using
    # R projects; massive problem if you're hard coding your filepaths)


# When a project is opened within RStudio:

# The working directory is set to the project directory (i.e., whatever folder
# contains the .Rproj file becomes the working directory).

# The environment (e.g., data you were using) is restored so you don't have to
# re-read in the data* (Depending on whether you have it set to save the data or
# not)

# Scripts are restored into editor tabs.

# Other RStudio settings (e.g. active tabs, pane sizes/positions, etc.) are restored to where 
# they were the last time the project was closed.

# R history is restored from previous sessions 




