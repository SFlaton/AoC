require '../input_reader'

def format_input
  InputReader.read('input.txt').first.split(',').map{|n| n.to_i}
end

def calculate_fuel(n)
  return (n) * (n + 1) / 2
end

def part1(input)
  solution = -1
  (input.min...input.max).each do |target_position|
    attempt = input.map { |position| (target_position - position).abs }.sum
    solution = attempt if ((attempt < solution) or (solution < 0))
  end

  return solution
end

def part2(input)
  solution = -1
  (input.min...input.max).each do |target_position|
      attempt = input.map { |position| calculate_fuel((target_position - position).abs) }.sum
      solution = attempt if ((attempt < solution) or (solution < 0))
  end
  return solution
end

p part1(format_input)
p part2(format_input)

