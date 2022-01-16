x =1

puts "--A--"
8.downto(0) {|n| print x[n] }
# puts x.to_s(2)

puts "\n\n--B--"
if x.even?
    puts "#{x} is: even"
else
    puts "#{x} is: odd"
end

puts "\n--C--"
p x =x-2

puts "\n--D--"
p x =x/2.to_f

puts "\n--E--"
p x =x+1.25

puts "\n--F--"
puts "Numerator is: #{x.numerator}"
puts "Denominator is: #{x.denominator}"

puts "\n--G--"
p x =x* 1/3

puts "\n--H--"
p x = x.round(3)

puts "\n--I--"
p y = x.to_s

puts "\n--J--"
p y.to_i

puts "\n--K--"
p y.to_f







