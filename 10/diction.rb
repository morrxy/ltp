require 'test/unit'
include Test::Unit::Assertions
# assert_equal( expected, actual, failure_message = nil ) 

# Array of String -> Array of String
# produce dictionary sorted array
def sort a
  sort_rec a, []
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

def find_smallest_idx a
  small = 0
  idx = 1
  while idx < a.length
    if a[idx].downcase < a[small].downcase
      small = idx
    end
    idx += 1
  end
  small
end

assert_equal([], sort([]), 'empty arr')
assert_equal(['a'], sort(['a']), '1 element arr')
assert_equal(['Are', 'Can', 'car', 'go'], 
             sort(['car', 'Are', 'Can', 'go']), 
             'multi element arr')
