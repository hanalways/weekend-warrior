# Robot Name

class Robot
  attr_reader :name

  def initialize
    @letters_array = ("A".."Z").to_a
    @numbers_array = ("0".."9").to_a

    @name = (@letters_array.sample(2) + @numbers_array.sample(3)).join("")

    return @name
  end

  def reset
    rand_name = (@letters_array.sample(2) + @numbers_array.sample(3)).join("")
    until rand_name != @name
      rand_name = (@letters_array.sample(2) + @numbers_array.sample(3)).join("")
    end

    @name = rand_name
    return @name
  end
end

robo = Robot.new.name

puts robo
