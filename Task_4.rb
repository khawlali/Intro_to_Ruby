puts "--A--"

a = [1,2,3,4,5]
p a.max 
p a.min 
p a.count
p a.sum 
i = 1
a.each do |a|
    i = i * a
end
puts i

puts "--B--"
puts a.include? (21)

puts "--C--"

p a =[1,1,2,2,3,3,3]
newA = a.uniq
result = Array.new

for j in newA do
  result.append("[" + j.to_s + "]" + "[" + a.count(j).to_s + "]")
end
puts result

puts "--D--"

arr = [1,2,3,3,4,5,5]
puts arr.reduce {|sum, n| sum + n}
sum = 0
arr.each do |s| sum = sum + s 
end
  puts sum 


puts "--E--"  

p arr = [1,2,3,3,4,5,5]
p arr.uniq

puts "--F--"  

a = [1,2,3,4,5,6,7,8]
a2 = Array.new(2)
a2[0] = a[(a.length/2)-1]
a2[1] = a[a.length/2]
p a2

puts "--G--" 

arr= [3,4,6,8,9]
if arr.length.odd? && arr.length >=1
    p arr.max
end

puts "--H--"

arr = [3,16,17,20,35]
i = 0
sum = 0
while i < arr.length
  if arr[i] != 17
    sum += arr[i]
  else
    break
  end
  i+=1
end
p sum

puts "--I--" 

arr=[1,1,1,1,1,2]
arr2 = arr.uniq

if arr2.length > 1
  puts "not identical"
else
  puts "identical"
end

puts "--J--" 

arr = [["A","B","C"], ["D","E","F"]]
p arr.transpose 
