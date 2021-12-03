@input = File.readlines("03_input.txt")


def part_01
  line_length = @input[0].size
  gamma_rate = ''
  epsilon_rate = ''
  (0..line_length-2).each do |index|
    count_0 = 0
    count_1 = 0
    @input.each do |line|
      if line[index] == "0"
        count_0 += 1
      else
        count_1 += 1
      end
    end

    if count_0 > count_1
      gamma_rate += "0"
      epsilon_rate += "1"
    else
      gamma_rate += "1"
      epsilon_rate += "0"
    end
  end
  gamma = gamma_rate.to_i(2)
  epsilon = epsilon_rate.to_i(2)

  puts gamma * epsilon
end

def part_02
  line_length = @input[0].size
  list = @input
  ox_rating = []
  co2_rating = []
  (0 ... line_length-1).each do |pos|
    index_0 = []
    index_1 = []
    list.each do |line|
      if line[pos] == "0"
        index_0 << line
      else
        index_1 << line
      end
    end
    if index_1.size < index_0.size
      if index_0.size == 1
        ox_rating = index_0
        break
      else
        list = index_0
      end
    else
      if index_1.size == 1
        ox_rating = index_1
        break
      else
        list = index_1
      end
    end
  end

  list = @input
  (0 ... line_length-1).each do |pos|
    index_0 = []
    index_1 = []
    list.each do |line|
      if line[pos] == "0"
        index_0 << line
      else
        index_1 << line
      end
    end
    if index_1.size >= index_0.size
      if index_0.size == 1
        co2_rating = index_0
        break
      else
        list = index_0
      end
    else
      if index_1.size == 1
        co2_rating = index_1
        break
      else
        list = index_1
      end
    end
  end

  puts ox_rating[0].to_i(2) * co2_rating[0].to_i(2)

end


part_02
