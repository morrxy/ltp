# encoding: UTF-8

TOTAL_WIDTH = 50
LEFT_WIDTH = 13
RIGHT_WIDTH = 8
CENTER_WIDTH = TOTAL_WIDTH - LEFT_WIDTH - RIGHT_WIDTH
PAGE_NUMBER_WIDTH = 3
CHAPTER_NUMBER_WIDTH = 3

def left_text(n)
  ('Chapter' + n.to_s.rjust(CHAPTER_NUMBER_WIDTH) + ':').ljust(LEFT_WIDTH)
end

def right_text(n)
  ('page' + n.to_s.rjust(PAGE_NUMBER_WIDTH)).ljust(RIGHT_WIDTH)
end

def center_text(str)
  str.ljust(CENTER_WIDTH)
end

puts('Table of Contents'.center(TOTAL_WIDTH))
puts(left_text(1) + center_text('Getting Started') + right_text(1))
puts(left_text(2) + center_text('Numbers') + right_text(9))
puts(left_text(12) + center_text('Letters') + right_text(13))
