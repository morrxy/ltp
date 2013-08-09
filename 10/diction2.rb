require 'test/unit'
include Test::Unit::Assertions
# assert_equal( expected, actual, failure_message = nil ) 

# Array of String -> Array of String
# produce dictionary sorted array
def sort a
  sort_rec a, []
end

def sort_rec un_a, so_a
  if un_a.length <= 0
    return so_a
  end

  small = un_a.pop
  new_un_a = []

  un_a.each do |item|
    if item.downcase < small.downcase
      new_un_a.push small
      small = item
    else
      new_un_a.push item
    end
  end

  so_a.push small

  sort_rec new_un_a, so_a
end

assert_equal([], sort([]), 'empty arr')
assert_equal(['a'], sort(['a']), '1 element arr')
assert_equal(['Are', 'Can', 'car', 'go'], 
 sort(['car', 'Are', 'Can', 'go']), 
 'multi element arr')

