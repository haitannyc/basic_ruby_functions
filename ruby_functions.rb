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

my_array = [3, 10, 1, 44, 2]
def array_max(aaray)
  sorted = aaray.sort
  max_num = sorted[sorted.length - 1]
  puts max_num
end

array_max(my_array)

puts "first max try"

#--second try with max number thats should be 552
my_array = [3, 10, -11, 48, 0, 552, 1]
def loop_max(aaray)
  max_numm = aaray[0]
  for i in 0..(aaray.length - 1)
    if (aaray[i] >= max_numm)
       max_numm = aaray[i]
    end
  end
  puts max_numm
end

loop_max(my_array)
puts "second max num with loop"

#third function
def make_models(ar1, ar2)  #takes 2 arrays as argument
  my_hash = {}            #make a new hash to pass the arrays into

  #take the array size to see how many times to loop
  #each loop keys i of first arrary to same i oof second array
  ar1.size.times { |i| my_hash[ar1[i]] = ar2[i]}  
  my_hash
 end

ar1 = [:toyota, :tesla, :ford, :honda ]
ar2 = ["Prius", "Model S", "Bronco", "Civic"]

#print out new hash to see if it works
puts make_models(ar1,ar2)

 # Create a function that takes two arguments - both of them arrays. Inside of the function, combine the arrays using the items from the first array as keys and the second array as values. For example, when these two arrays are supplied as arguments:
    # [:toyota, :tesla]
    # ["Prius", "Model S"]  
    # they should return a hash like so:
    # {toyota: "Prius", tesla: "Model S"}

     ##def make_model(ar1, ar2)
       
       ## to_h → 
       ##  Returns the result of interpreting ary as an array of [key, value] pairs.
       ##  [[:foo, :bar], [1, 2]].to_h
       ##   # => {:foo => :bar, 1 => 2}
       ## [[ar1], [ar2]].to_h

       ##zip Converts any arguments to arrays, 
       ##   then merges elements of self with corresponding 
       ##   elements from each argument.

       ##     a = [ 4, 5, 6 ]
       ## ##      b = [ 7, 8, 9 ]
       ##      [1, 2, 3].zip(a, b)   #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
       ##      [1, 2].zip(a, b)      #=> [[1, 4, 7], [2, 5, 8]]
        ##      a.zip([1, 2], [8])    #=> [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
       ##  myhash = array1.zip(array2)
       ##  Hash[myhash]
       ##  end
  
      # make = [:toyota, :tesla, :ford, :Bughatti]
       # model = ["Prius", "Model S", "Mustang", "Straight Baller Car"]
      #puts combine_array(make, model)

=begin use this code to solve third function
def Hash.from_pairs(keys,values)
  hash = {}                                           --declare new hash
  keys.size.times { |i| hash[ keys[i] ] = values[i] } --size of  array 
                                                        for each element add corresponding
  hash
end
=end

#fizzbuzz

def fizzBuzz (num1, num2)

  for i in (num1)..(num2)
    if i%3 == 0 && i%5 == 0
       puts "FizzBuzz"
    elsif i%3 == 0
       puts "Fizz" 
      elsif i%5 == 0
        puts "Buzz"
        else 
          puts i
  end 
  end

end 

fizzBuzz(1,100)   