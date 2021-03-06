# frozen_string_literal: true

input = DATA.each_line(chomp: true).map(&:to_s)

def trees(input, slope)
  input.each_with_index.count do |row, y|
    x = slope * y
    next unless x.to_i. == x

    row[x.to_i % row.length].eql?("#")
  end
end

results = []
[1, 3, 5, 7, 0.5].each do |slope|
  results << trees(input, slope)
end

puts results[1]
puts results.reduce(:*)

__END__
......##....#...#..#.#....#....
.......#...#..#..#....##.......
#.#...#........###.#.##..#.....
.......#.....##.#..##...##.##..
.#...#.#...##..........#..#....
#.......##.....###.#...#......#
.........#....#.#.......#..#...
..#.......####.......###..##...
.#.#.##..#.#...##..#...###...##
...................#...........
....#.#.......#..........#.#..#
..#.#...........####.#.......#.
.....#.##..#..##..#.#...#......
#.##...###..#................##
...#...#...#..##.#............#
#.##....##....#........#..#....
..#......#.#.....##.......#....
.......#......#....#......#....
.#........##.....#.#...#...#.#.
..........##.#...#..#..........
#####..##......#.....#......#.#
......#...............##...#...
..#.#.##..#...#.#........#...#.
..........#......#..........###
..#...##.##..##..........#.....
........#.##.#.....#..#...#....
#.....#.........#..............
..........##.##....#..#..#.....
..#...........#.......#........
........#..#.....#.#.#...#.....
#.......##.....#.....#...#.##..
###.#.#....#..#.....#........#.
..#..#..#..........#....#....#.
..#...##...#.#.##.....#..#.....
...#....###...........##.#.....
.##.................##.#.......
........#...#.##..#...#........
.##..#............##..........#
............###.#....#..#......
.....##....#.....#......#.....#
....#.....#.##.......#...#.#...
.##.#......#.........#...##....
..##......#......#...........#.
.......#.#.............#.......
.##.#...#..##....##.......#....
...#......##.#.#......#.....###
#.#....#.......#.#......#....#.
#......#.#.....#...........#..#
##.#..##...#........#.##.#....#
.....#........#........#...#...
...............#.......#..#....
.#.#.#..#.#...#.......#.....##.
.#.#.............#..#....#.....
....#.......#..##.........###..
.#.....#.#....#..#..#....#.....
........#......#.....#.#....#..
##......#....##.....#.#..#.#...
.#...#..#.##.#.##.##.....#.....
#...#....#.........##.#....#...
.........##..#.....#..#...#.#..
.#............#..........#.#...
...........#.....#......#.#....
#...#...#.....#..#....#........
#..##.....#..#.......#....#...#
#..#..#..........#......#...#..
...#...#.#.##.#...#....#...##..
......##....##....#....##..####
...###.#..#....#.......#.......
#.........##......#...#........
..........#....#.......#.......
#....##................##....##
.........#....#.#.......##.#...
.....#......###.......#..#...##
###.....#..##....###...........
.....#...#....#.....##......###
.#..#...#......##........##..#.
#.#.#.#....#.............#.....
......#.....##.#....#..##...#..
..#............#.#....#..#...#.
.............#.#...##.......#..
...#....#.##.#...#.#..##...###.
...#..............#.......#....
......###.#............#.....#.
.##...###..#.####...#..........
...#..#...#.#.#..#......#..#...
.#....##.###....#........#.....
..#..#....#.........##.........
..........##.###........#.#...#
.........#...#..#........#.....
.......#.....#...###...........
.....#.#..##......#...#...#....
.....#....#..#........##.#..#..
...#...........#............#..
##.....#....#.#...#...#....##..
...#.....#.....#...##...#...#..
...##.#..........##...#.#.##.#.
....#.#.##.......#.#...#......#
......###...#....#.##........#.
.....#.........#...#...#..#..##
.........#................#....
.##..###..................#.#.#
.##...........#...........#....
#...#........#.....#..#...##...
.....#..#...#.........#.......#
..#..............#......#......
#....#...............#.#.......
...#........#.#....#..#.###.##.
.......#..##..#...#..#...###...
..........##..#.......##.##....
##.#..#.#...##..........#......
.#.##.#...##.....#....#....#.##
...#.#......#...#.##..##.......
##.......#.#......#....##..#.#.
...#..#.##.........#...#.....#.
.##.##..##...#........#..#.....
.#.##.............#.#.#.....#..
.......#.....................#.
......#...#....#..#..........#.
..#..#....#.#................#.
..#.....#..#.#......#......###.
...#...##..##....#..#...###.#..
...#.....#............##......#
.......#.#.#......#.....###....
.....#......#.....#.........#.#
#...#.#...#..#...#..#....#.....
#..##...#..##.............#..#.
##....##.......#.#.......#..#.#
..............#...#..#......#..
..#...#...#.#...#.#............
#..........#...#.............#.
..........##......#........#...
#...#...#....#.#...........#...
..#.#.#...##......#.#...#.#..#.
.......#.......#.............#.
.#..........#..................
..##...#......#..........#....#
.#..##..........#...#..........
...#....#..#.#.....##..##.#..#.
...#...#...#..#....##..#....#..
..............#.#.....#......##
..............####....#.#..#...
.#........##....#...#.#...#..#.
.#..##.###....#.#.....##..#....
...###.#.........#..#..#.##.#..
.....#..#.....#..#...##......##
.#.#.##.............#...##.....
....##........#........#.......
.......#.....###..............#
#.##.......##....#.#.....#.#...
........#....#............#..##
...#.#..#.......#..........#...
..##....#..##......###.#.....#.
.#..#.#.##....#.......#........
........#.####.#.......#.##....
..........##...............#...
.#..#.....#....##..#..##...#..#
....#.#.....#.#.........#####..
...#.##....#...###.##.#..#.....
.#...........#.............##.#
..#....#....####.....#.#....#..
......##.......#....#..#.......
.####...##.#.#..#.####.#.#.....
###.........#..#.#.#.#........#
...#...#..#.............#.##...
.........#....#......#.....#.#.
...#....#......#..#......#....#
..#...#..........##..##........
.....##........#......#.....#..
...#....#....#....#..#....#....
##...#...........##............
.......#..##..#.......##.#.....
...............#.##.....#......
#.#....##.#.....#...#..........
........#......#...#......#.#.#
..#..#.....#.#........#........
..####.....##.#.##.......#.#.#.
.#.##.#.......##......#.....#..
....#.....##.........#.....#...
.#.#...###.#.#..........#....#.
.........##.#.#.....#..#.......
......#..#...#..#..###.#.#.....
.....#...#.#..#.#.......#.#...#
......##........#..#...#......#
#..##...#...#..#.....#..#..#..#
......#....#...........#.#.....
...#.......#...............#...
#.........#......#.............
..###..................#......#
#.....#.#.#.......##....#......
.........#...........#....#.#..
.###....##.##..##.............#
.##.#......#...#...##..........
....#........###......#.#......
...........#..#.##.#...........
.#..#.......#......#.#####.....
....##....##......#....#...#...
.......#..#.....#.#...###...#.#
..##.....#.......#.#.#..#.....#
.#...#............#....##...#..
.#..#...##.......#.............
..##.......#...........#.#....#
...#.#...#....#..#.....#.......
...#........#...##...#.#..#.#..
#........#..........#..........
......#......#.........#.......
...##...#.....#.......#...#.##.
......##..##......#..###..#....
....##....#..###.#.....##......
##.##..#.....#..#..............
..#.#..#....#....#....#.#...#.#
.#.....##.#.##.#..#.#..........
...#......##.#...##..##...#....
.###.....#......#.......#.....#
....##.......#.....#..#....#...
..........#..##....#..##.#....#
...#....#..##.#........#.#.#...
...#.#...#....#.......#..##.#.#
#..#..........#.#...#....#.....
#..#...........................
........#.....#.....#.#...#.#..
#...#..#...#..........###...#.#
.....##.#..##.#.#.#.##....#....
#.......#....#.#..#..#..#.#....
..###.#.......#.#.##...........
#....#..#..........#.##..#.#...
..#..#........##....#..##......
#...##..#.........#.#....#.#...
##..###..##...#.........#.#...#
###..#....#..##...#.#..#.#.....
.#.##.#......#............#....
.#...#.##.#.........##.........
##.....###.....#........#..#...
...........##.#................
.#......###......#....#..####..
#...##.....#.....#..##....#.#..
..#....#.......#.#.#......#...#
#.....#........#....#.#...#....
..##...............#....#..###.
.#....#.......#..#...#.........
.##.#..#..#...#..#..#....#....#
.......#.#....#.....##...#.....
.#....#.#.#...........#........
.........#..##..#..#...#.......
##..##...#......#.....#........
#...........#.....#..###......#
.#...........#....#...#...##.#.
..............##.###.#.#####.##
........#.#...#.............##.
#...................###..#.##..
#.....#...##...................
.....##..........#..#.#........
.#....##.#....#....###....#...#
.......#.#...........#.#.....#.
......#........###...#...##....
.##..........#..#..#...........
....#.......#..#.....##.#..#...
..#.##......#..#.....#..#......
......#...#..##....#.#..#..#.#.
#.........................#...#
###.#.......#......##....#..#..
..##.###.#...#.............#...
.....#...#...#......#....#####.
#..........#.#.##.#.#.....#..#.
....#.........#...#.#.........#
#.##.........#...#...#.####..##
.##.................#..........
##.....#............#..#.#.....
#.#...#.#........#........#...#
.#...........#....#..#.......#.
.#.......#..........##..#.##..#
.#..##....#..##......#.#..##...
#......#............#.......#.#
.##...............#...#...#....
.......##.#..#..##.....#.......
...#.......#..###.....#....#...
......#............#...........
####............#.........#.##.
#......#.#..#...#.....#..#.....
...........#...#..##.......####
#.#...##..#....#.#.........#.#.
...#....#..#.......#.........#.
.........#.#.#...#....#........
.#.....#........#..#.........#.
....#....#..#.....#...#........
..#....#.#.....#..##...........
.#...#..#..#.##.###....#.......
#......##.......##..##.........
...#.........#.......##.#......
.#...#...#.......#........##...
..#.............#.......#.....#
..#...........#.#.#...#.......#
.....##..#....#..............#.
#.#.....#.#....................
.....#..##..#...#.....#........
..#.......#..####..#....#.##.#.
#....#.....#.....#...#......#..
..#....##...#....#..#..#.....#.
..#.####..............##.......
.#.........#..#...#.......##...
#....#.#........#....#...#...##
.....#..#....#.#..#...#.#.##...
.##.................#...##.....
.##.##.##...#...........#...##.
..#....#..#.....#..#......##...
.#...........#......#....#..#.#
.#.#............#..#..#...#....
....#......#.....#.#.#.....#...
#.......##.............#.......
....#....................#.#...
......#........#..#.#.....#.#..
.....#..#....#.#........#....#.
...##.........#...#.##....#..#.
.#....#..#...#.#.#......#......
#......#.#.##.#..#..#.....##...
......#....#.#...#..#.#........
..#.....##.....#...#.#.......#.
......#.#.....#........#.......
......#.#.#...#..#.#.#.#.......
..#.#.##..#..#..#.#.##...#.....
......#.#.#......#.....#...#...
.....#.##....#..##...#...#....#
..#.....#...........#..#..##...
..#..#.......#....#....###.#...
