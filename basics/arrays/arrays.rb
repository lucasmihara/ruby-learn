numbers = Array.new([1, 2, 3, 4, 5])
names = ["john", "bob", "jack"]
zeros = Array.new(5, 0)

a = numbers.first
numbers.push(6)
numbers.pop 
b = numbers.last
puts "#{b}"