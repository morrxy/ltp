M = 'land'
o = 'water'

world  =   [[o,o,o,o,o,o,o,o,o,o,o],
            [o,o,o,o,M,M,o,o,o,o,o],
            [o,o,o,o,o,o,o,o,M,M,o],
            [o,o,o,M,o,o,o,o,o,M,o],
            [o,o,o,M,o,M,M,o,o,o,o],
            [o,o,o,o,M,M,M,M,o,o,o],
            [o,o,o,M,M,M,M,M,M,M,o],
            [o,o,o,M,M,o,M,M,M,o,o],
            [o,o,o,o,o,o,M,M,o,o,o],
            [o,M,o,o,o,M,o,o,o,o,o],
            [o,o,o,o,o,M,o,o,o,o,o]]


def not_exist x, y, w
  x < 0 || x >= w.length || y < 0 || y >= w[0].length
end

def continent_size world, x, y

  if not_exist(x, y, world) || world[x][y] != 'land'
    # puts x.to_s + ' ' + y.to_s if not_exist(x, y, world)
    return 0
  end

  size = 1
  world[x][y] = 'counted land'

  size = size + continent_size(world, x-1, y-1) 
  size = size + continent_size(world, x  , y-1) 
  size = size + continent_size(world, x+1, y-1) 
  size = size + continent_size(world, x-1,   y) 
  size = size + continent_size(world, x+1,   y) 
  size = size + continent_size(world, x-1, y+1) 
  size = size + continent_size(world, x  , y+1) 
  size = size + continent_size(world, x+1, y+1)

end

puts continent_size(world, 50, 50)
puts continent_size(world, 5, 5)