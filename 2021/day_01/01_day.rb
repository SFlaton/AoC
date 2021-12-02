@input = File.readlines("01_input.txt")

def part_01
  count = 0
  @input.each_with_index do |line, index|
    if line.to_i < @input[index + 1].to_i
      count += 1
    end
  end
  puts "part 1: " + count.to_s
end

def part_02
  count = 0
  @input.each_with_index do |line, index|
    a = line.to_i + @input[index+1].to_i + @input[index+2].to_i
    b = @input[index+1].to_i + @input[index+2].to_i + @input[index+3].to_i
    if a < b
      count +=1
    end
  end
  puts "part 2: " + count.to_s
end
part_01
part_02