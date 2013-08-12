# Orange tree. Make an OrangeTree class that has a height method that returns its height and a one_year_passes method that, when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees...whatever you think makes the most sense. And, of course, you should be able to count_the_oranges (which returns the number of oranges on the tree) and pick_an_orange (which reduces the @orange_count by 1 and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). Make sure any oranges you don’t pick one year fall off before the next year.

class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @live = true
    @orange_count = 0
  end

  def height
    @height
  end

  def produce_fruit
    if !@live
      puts "the tree has died"
      return
    end

    @orange_count = 0

    if @age <= 3
      @orange_count = 0
    elsif @age > 3 && @age < 5
      @orange_count = 5
    elsif @age >= 5
      @orange_count = 10
    end
  end

  def count_the_oranges
    @orange_count
  end

  def pick_an_orange
    if @orange_count >= 1
      @orange_count -= 1
      puts "this orange is very delicious"
    else
      puts "no more orange to pick this year"
    end
  end

  def one_year_passes
    @age += 1
    if @age >= 10
      @live = false
    end

    if !@live
      puts "the tree has died"
      return
    end

    @height += 1

    if @age > 3
      produce_fruit
    end
  end

end

t1 = OrangeTree.new

11.times do
  t1.one_year_passes
  puts "tree height is #{t1.height}"
  t1.produce_fruit
  puts "#{t1.count_the_oranges} oranges on the tree"
  if t1.count_the_oranges > 0
    t1.count_the_oranges.times do
      t1.pick_an_orange
    end
  end
end
