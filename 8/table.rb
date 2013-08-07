w1 = 40
w2 = 12
w3 = 25
w4 = w1 - w2 - w3
w5 = 3

chapters = [[1, "Getting Started", 1], [2, "Numbers", 9], [3, "Letters", 13]]

puts("Table of Contents".center(w1))

chapters.each do |ch|
  c1 = "Chapter #{ch[0]}".ljust(w2)
  c2 = ch[1].to_s.ljust(w3)
  c3 = ('page' + ch[2].to_s.rjust(w5)).ljust(w4)
  puts c1 + c2 + c3
end