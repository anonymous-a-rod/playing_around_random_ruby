# array starts at 0 and ends at -1

arr1 = [1, 'this', true, false, nil, [1, 'two'], {name: 'Aaron'}]

puts arr1[-1][:name]

# All the same
# array = []
# array = Array.new
# array = Array.new()

# creates an array with 10 nil objects
# array = Array.new(10)

# creates an array with 10 'String' objects
# array = Array.new(10, 'String')

# first arugment must be a number
# if you enter a floating number, it will round down to the nearest whole number
# max 2 arguments, number of times, and what is the default array value 
# no arg create an empty [], one argument is an int, uses nil as default placeholder value, 2nd argument is default placeholder value

arr1 << 100
arr1 << 200 << 300 << 400
# push method
arr1.push 500, 600, 700

p arr1.pop

arr1.unshift 999, 0, 10

p arr1
p arr1[4]
# removes specific index
p arr1.delete_at(2)

arr1 << nil << nil << nil << nil << nil
# compact removes all nil
arr1.compact 
arr1 << nil << nil << nil << nil << nil
# removes all occurances of delete argument
p arr1.delete(nil)
p arr1

arr1.shift

p arr1.size
p arr1
p arr1.inspect

arr1.each do |code|
  puts code
end

arr1.each_with_index do |code, index|
  puts "index #{index} is #{code}"
end

numbers = [1, 2, 3, 4, 5]

numbers.map! { |number| number**2 }
puts numbers

even_numbers = numbers.select do |number|
  number.even?
end
p even_numbers

odd_numbers = numbers.select do |number|
  number.odd?
end
p odd_numbers

def max_difference(arr)
  min_val = arr.min
  max_val = arr.max

  max_val - min_val
end

p max_difference numbers

p numbers[2]
p numbers.at(2)
# returns nil if doesn't exist
p numbers[9999]
p numbers.at 10000

p numbers.include? 1

nums = [3, 10, 9, 5, 1, 2]
nums << 6
p nums.sort!

# array = []
# p array.methods
# p array.methods.count 

p nums.reverse

arr = [1, 2, [3, 4, [5, 6]], nil, nil, nil]
p arr.flatten! # flattens nested arrays
p arr.compact! # removes nil elements
p arr.product # opposite of flatten, makes each index into an array
p arr.length # length of array
p arr.count # count of array
p arr.size # size of array
# effectively the same

# when invoking min or max on an array, the array can not have nil values
# can use compact prior to remove nil values

# desructive and non destructive

# question mark? indicates the method returns a boolean