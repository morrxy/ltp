a1 = ['d', 'e', 'a', 'z', 'y', 'b', 'e']

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

def sort a
  b = []
  while true
    if a.length == 0
      break
    end
    smallest_idx = find_smallest_idx(a)
    b.push a.delete_at(smallest_idx)
  end
  b
end

puts a1.to_s
puts sort(a1).to_s