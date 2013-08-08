# require 'test/unit'
# include Test::Unit::Assertions
# assert_equal( expected, actual, failure_message = nil ) 

a1 = ['d', 'e', 'a', 'z', 'y', 'b', 'e']
a2 = []
a3 = ['a']

def find_smallest_idx a
  small = 0
  idx = 1
  while idx < a.length
    if a[idx] < a[small]
      small = idx
    end
    idx += 1
  end
  small
end

def sort_rec un_a, so_a
  if un_a.length == 0
    return so_a
  else
    smallest_idx = find_smallest_idx(un_a)
    so_a.push un_a.delete_at(smallest_idx)
    sort_rec un_a, so_a
  end
end

def sort a
  sort_rec a, []
end

puts a1.to_s
puts sort(a1).to_s
puts a2.to_s
puts sort(a2).to_s
puts a3.to_s
puts sort(a3).to_s