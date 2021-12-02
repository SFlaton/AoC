@input = File.readlines("02_input.txt").map{|l| l.split(" ")}

def part_01
  horizontal = 0
  depth = 0
  @input.each do |line|
    case line[0]
    when 'forward'
      horizontal += line[1].to_i
    when 'down'
      depth += line[1].to_i
    when 'up'
      depth -= line[1].to_i
    end
  end

  puts horizontal * depth
end

def part_02
  aim = 0
  horizontal = 0
  depth = 0
  @input.each do |line|
    case line[0]
    when 'forward'
      horizontal += line[1].to_i
      depth += (aim * line[1].to_i)
    when 'down'
      aim += line[1].to_i
    when 'up'
      aim -= line[1].to_i
    end
  end

  puts horizontal * depth
end
part_02