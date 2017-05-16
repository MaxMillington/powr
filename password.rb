require 'pry'

class PW
  attr_accessor :numbers
  attr_reader :input

  def initialize(input)
    @input = input
    @numbers = []
  end

  def password(number)
    return 'cool' if number == 1
    return 'uncool' if number == 4
    chars = number.to_s.chars
    sum = 0
    chars.map do |n|
      square = n.to_i ** 2
      sum += square
    end
    password(sum)
  end

  def sum
    1.upto(input) do |number|
      numbers << number if password(number) == 'cool'
    end
    numbers.reduce(:+)
  end
end