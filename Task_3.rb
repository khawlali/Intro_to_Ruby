puts "--A--"
a = 1
b = 2
c = 3

puts true if b - a == c - b
puts false if b- a != c - b

puts "--B--"

if b-a <=1 || c-a<=1
    puts true
    puts "difference between b or c from a are 1 or less"
elsif b-a >= 3 || c-a >=3
    puts "difference between b or c from a are 3 or more"
end

puts "--C--"

x= 10
y= 20

if   (10 <= x && x <= 99) && (10 <= y && y <=99)
    puts true if x[0]==y[0] || x[0]==y[1] || x[1]==y[0] || x[1]==y[1]
elsif
    puts "one of the numbers or both out of the range 10..99 "
end
puts false if x[0]!=y[0] && x[0]!=y[1] && x[1]!=y[0] && x[1]!=y[1]

puts "--D--"

a1=10
a2=21

if (a1==11 || a2==11) || (a1+a2==11 || a1-a2==11 ||a2-a1==11)
    puts true
elsif
    puts false
end

puts "--E--"



