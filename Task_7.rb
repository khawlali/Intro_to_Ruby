
arr = [1,2,3,4,5,6,7,8,9,10]

puts "--A--"

i=0
while i< arr.length
  puts arr[i]
  i+=1
end

puts "--B--"

i=0
while i< arr.length
  if(arr[i]==5 || arr[i]==6)
    i+=1
    next
  end
  puts arr[i]
  i+=1
end

puts "--C--"

i=0
while i< arr.length
  if(arr[i]>=6)
    i+=1
    next
  end
  puts arr[i]
  i+=1
end

puts "--D--"

i=0
while i< arr.length
  if arr[i].even?
    puts arr[i]
  end
  i+=1
end

puts "--E--"

i=0
while i< arr.length
  if arr[i].odd?
    puts arr[i]
  end
  i+=1
end

puts "--F--"

i=1
while i< arr.length-1
  puts arr[i]
  i+=1
end

puts "--G--"

i=0
while i< arr.length
  if arr[i].even?
    puts arr[i].to_s + " is even"
  else
    puts arr[i].to_s + " is odd"
  end
  i+=1
end