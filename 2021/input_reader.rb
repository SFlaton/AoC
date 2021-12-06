module InputReader

  def self.read(input)
    path = input
    File.readlines path, chomp: true
  end
end