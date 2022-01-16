s = "Hello Ruby World"
s.slice! "Hello "
# s.delete_prefix!("Hello ")
puts s

s= "Welcome to " + s 
puts s 

s["World"]= "Khawla"
puts s

s.insert(16, "\"")
s.insert(23, "\"")
puts s

s.insert(15, ",")
puts s

s.insert(16, "\t")
puts s

count_ch =s.count(s) 
puts count_ch

count_s =s.count(" ") 
puts count_s

s= s.gsub(" ", "-")
puts s




