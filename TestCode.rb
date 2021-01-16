#Brian Klein - October, 2019
#CS-415 Principles of Programming Languages
#Winona State University - Rochester
#Learned with help from learnrubyonline.org
#Used for a presentation on the Ruby programming language


# Printing Output

#puts, p, or print to print output to the screen
#can use '' or "" as long as you are consistent
puts "Hello World" # => Hello World
puts 'Hello World' # => Hello World
# using p will print "" around the output string
p "Hello World" # => "Hello World"
p 'Hello World' # => 'Hello World'
# using print will not automatically add a \n after the string
print "Hello World" 
print 'Hello World' # => Hello WorldHello World


# Comments

=begin
comments can be
put into a large
section by using this syntax
=end
puts "\nI can print this" #and still have comments in the same line


# Variables
myVariable = "This is my variable"
puts myVariable # => This is my variable
# there are three main types of variables

# Strings
#there are several different ways to define a string in Ruby
myString = "\nI'm a String!\n"           # => I'm a String!
myString = %Q{\nI'm also a String!\n}    # => I'm also a String!
myString = %{\nI'm a String as well!\n}  # => I'm a String as well!
myString = %/\nI'm a String!             
That stretches until
we end it with a special character!\n
/
# Here documents are another way to define strings, but I will cover that later.

# Boolean
myBool = true                            # => true

# Numbers
myNumber = 10                            # => 10


# Math
# math operators in Ruby include + - * / ** %
# addition
numberOne = 2
numberTwo = 5
answerNumber = numberOne + numberTwo
puts answerNumber                        #  => 7

# subtraction
answerNumber = numberTwo - numberOne
puts answerNumber                        #  => 3

# multiplication
answerNumber = numberOne * numberTwo
puts answerNumber                        # => 10

# division
answerNumber = numberTwo / numberOne
puts answerNumber                        # => 2, no remainder

# division
answerNumber = numberOne / numberTwo
puts answerNumber                        #  => 0

# exponential 
answerNumber = numberOne ** numberTwo
puts answerNumber                        # => 32

# modulo
answerNumber = numberOne % numberTwo
puts answerNumber                        #  => 2


# Strings

#Ruby has many build in methods for using strings
puts "Hello World".length                # => 11

#original string
puts myString                            # => I'm a String!

#reversed string
puts myString.reverse                    # => !gnirtS a m'I

#ALL CAPS
puts myString.upcase                     # => I'M A STRING!

#all lower case
puts myString.downcase                   # => i'm a string!

#mix and match
puts myString.upcase.reverse             # => !GNIRTS A M'I

#check for a substring
puts myString.include?("I'm")            # => true


# Arrays

#initialize an empty array
myArray = []                             # => []

#initialize an array with 3 elements 
#and print contents of array
myArray2 = [1, 2, 3]                     # => [1, 2, 3]

#add an element to the array by 
#selecting the index in the array 
#to change. 
#Arrays indices start at 0
myArray2[3] = 4                          # => [1, 2, 3, 4]

#change an element in an array
myArray2[0] = 100                        # => [100, 2, 3, 4]

#two more ways to initialize an array
myArray3 = Array[1, 2, 3, 4, 5]          # => [1, 2, 3, 4, 5]

#or
myArray4 = Array.[](6, 7, 8, 9, 10)      # => [6, 7, 8, 9, 10]

#arrays can hold strings
myStringArray = ["yes", "no", "maybe"]   # => [yes, no, maybe]

#arrays can hold multiple data types
myStringArray[3] = 5                     # => [yes, no, maybe, 5]


# Hashes and symbols

#create a new hash
myHash = {}
  #or
myNewHash = Hash.new()

#add keys with values
myHash = {
  "myKey1" => "myValue1",
  "myKey2" => "myValue2",
  "myKey3" => "myValue3"
}

puts myHash["myKey1"]                     # => myValue1

#you can use symbols instead of strings for keys
myNewHash[:key1] = "symbol1"
myNewHash[:key2] = "symbol2"
myNewHash[:key3] = "symbol3"

puts myNewHash[:key2]                     # => symbol2
  
#or

myNewHash = {
  key1: "Symbol1",
  key2: "Symbol2",
  key3: "Symbol3"
}

puts myNewHash[:key3]                     # => Symbol3
  

# Conditional Statements
  
num = 1
num2 = 2

if num < num2
  test = "less than"
elsif num == num2
  test = "equal"
else
  test = "greater than"
end

puts test                                 # => less than


# Unless, Until, and While

# unless the condition is met do something
unless num == 5
  puts num
  num += 1
  puts num                                # => 1 2 3 4
end

#until the condition is met do something
until num == 5
  num += 1
  puts num                                # => 5
end

#while the condition is met do something
while num > num2
  num -= 1
  puts num                                # => 4 3 2
end


# Methods

#create a new method like this
def myMethod
  #method code goes here
  puts "Learning about Ruby is fun!"
end

#call myMethod
myMethod                                  # => Learning about Ruby is fun!

#you can pass parameters to methods like this
def clapYourHands(myNumber)
  puts "Clap!\n" * myNumber
end

clapYourHands(5)                          # => Clap! Clap! Clap! Clap! Clap!


#everything is an object in Ruby
#here is an example of a method for a primitive 
5.times { puts "Enhance..." }             # => Enhance... Enhance... Enhance... Enhance... Enhance...
  

# Here documents
  
print <<EXAMPLE 
  this is one way to 
  print a multiple line string 
  using a Here Document 
  
EXAMPLE

print <<'example2'
  this is another way to
  print a multiple line string
  also known as a here document
  
example2

# stacking Here documents, why though?
print <<exm3, <<exm4
this is the third example

exm3
this is the fourth example

exm4


# BEGIN and END statements declare code to be executed either at the beginning or end of the script

END {
  puts "\nAnd they coded happily ever after!"
}

BEGIN {
  puts "In the Beginning..."
}

# Methods and Blocks
def methodsAndBlocks
  puts "This string can be found in the method"
  yield
  puts "This string is also in the method"
  yield
  puts "\n"
end

methodsAndBlocks {puts "this string is in the block"}
# => This string can be found in the method
# => this string is in the block
# => This string is also in the method
# => this string is in the block

# Methods and Blocks with Parameters
def MnBwithParam
  yield 2
  puts "this is in the method"
  yield 200
  puts "\n"
end

MnBwithParam {|i| puts "lets print the block parameter: #{i}"}
# => lets print the block parameter: 2
# => this is in the method
# => lets print the block parameter: 200
  
# blocks with more than one parameter
def moreBlocks
  yield "yes", "no"
end

moreBlocks {|a, b| puts"We say #{a} to coding with Ruby! But we say #{b} to more Homework!\n\n"}
# => We say yes to coding with Ruby! But we say no to more Homework!

#creating an array using blocks
myBlockArray = Array.new(5) {|e| e = e * 2 }
puts myBlockArray                                # => [0, 2, 4, 6, 8]

#easy to change an instance variable to 
#a function since no () are needed. 
#You can change the variable to a function 
#without having to change where you are calling
testString = myMethod
puts testString                                  # => Learning about Ruby is fun!

#fun things you can do when everything is an object
puts 'Everything is an Object in Ruby'.downcase.split(' ').uniq.sort
                                                 # => an
                                                 # => everything
                                                 # => in
                                                 # => is
                                                 # => object
                                                 # => ruby

#get input from the user
puts "Enter your name here: "
name = gets.chomp
puts "Hello #{name}"
