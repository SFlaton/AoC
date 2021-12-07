require '../input_reader'

def format_input
  InputReader.read('input.txt').first.split(',').map(&:to_i)
end

def part1(input)
  calculate(input, 80)
end

def part2(input)
  calculate(input, 256)
end

def calculate(input, n)
  fish_count = input.each_with_object(Array.new(9, 0)) { |n, memo| memo[n] += 1 }

  n.times do
    fish_count.rotate!
    fish_count[6] += fish_count[8]
  end

  fish_count.sum
end

p part1(format_input)
p part2(format_input)