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

s1= "Hi"
s2= "Welcome"

 if s1[0]!=s2[0] && s1[-1]!=s2[-1] && s1.count("x")==0 && s2.count("x")==0
    puts true
 elsif
    puts false
 end

 puts "--F--"

 s3= "W"
 p s3.match?(/a/) || s3.match?(/e/) || s3.match?(/i/) || s3.match?(/o/) || s3.match?(/u/)

 puts "--G--"

 puts "enter a score: "
 n = gets.to_i

if (0 <= n && n <= 100) 
    if 0 <= n && n <= 49
        puts "fail."
    elsif 50 <= n && n <= 60
        puts "pass."
    elsif 60 < n && n <= 70
        puts "good."
    elsif 70 < n && n <= 80
        puts "very good."
    elsif 80 < n && n <= 90
        puts "excellent."
    elsif 90 < n && n <= 100
        puts "incredible."
    end

elsif
    puts "Please insert a score from 0 to 100 "
end


