x=1

puts "--A--"
8.downto(0) {|n| print x[n] }
# puts x.to_s(2)

puts "\n\n--B--"

if x.even?
    puts "#{x} is: even"
else
    puts "#{x} is: odd"
end



