=begin
Create the following functions:

Create a function that takes a string and adds the phrase "Only in America!" to the end of it
Create a function to find the maximum value in an array of numbers. For instance: [100,10,-1000]

should return 100. Do not use Ruby's built-in .max function.

Create a function that takes two arguments - both of them arrays. Inside of the function,
 combine the arrays using the items from the first array as keys and the second array as values. 
 For example, when these two arrays are supplied as arguments:
  [:toyota, :tesla]
  ["Prius", "Model S"]
they should return a hash like so:
  {toyota: "Prius", tesla: "Model S"}

Write a program that prints the numbers from 1 to 100, except:

for multiples of three print "Fizz" instead of the number
for multiples of five print "Buzz"
Print "FizzBuzz" for numbers that are multiples of both 3 and 5.

=end

#FIRST function
def add_phrase(your_phrase)
 
  puts your_phrase.capitalize  + " " + "Only in America!"
end

add_phrase("i am stupid rich!")

#Second function
=begin
my_array = [3, 10, 1, 44, 2]
def array_max(aaray)
  sorted = aaray.sort
  max_num = sorted[sorted.length - 1]
  puts max_num
end

array_max(my_array)

#third function
def make_model(ar1, ar2)
  my_hash = ar1.zip(ar2)
  end
  }

ar1 = [:toyota, :tesla]
ar2 = ["Prius", "Model S"]
make_model(ar1,ar2)

keys = %w(name description country)
>> values = ["Dr Nic", "Good lookin'", "Netherlands"]
>> [keys, values].transpose
=> [["name", "Dr Nic"], ["description", "Good lookin'"], ["country", "Netherlands"]]
>> hash = Hash[*[keys, values].transpose.flatten]
=> {"name"=>"Dr Nic", "country"=>"Netherlands", "description"=>"Good lookin'"}
=end


#fizzbuzz


for i in 1..100
  if i%3 == 0 && i%5 == 0
    puts "FizzBuzz"
  elsif i%3 == 0
    puts "Fizz" 
  elsif i%5 == 0
    puts "Buzz"
  else 
    puts i
     