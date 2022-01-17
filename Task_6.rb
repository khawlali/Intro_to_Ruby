symbols = :welcome_to_ruby 


puts "--A--"

p symbols.start_with?("wel", "to", "zzz")

puts "--B--"

p symbols.end_with?("by", "zy")

puts "--C--"

sym= :welcome_to_rubz
p sym

puts "--D--"

p string1.delete("_").size

puts "--E--"

p symbols.upcase
p symbols.downcase

puts "--F--"

string1=symbols.to_s

p symbols.to_s
p symbols.to_sym

puts "--G--"

mysymbols = string1.split("")
sym2= mysymbols
p sym2.map { |x| x.to_sym }