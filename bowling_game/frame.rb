# frozen_string_literal: true

# This class represents each of the rounds of the game
class Frame
  attr_accessor :first_try, :second_try, :total

  def initialize
    @first_try = 0
    @second_try = 0
    @total = 0
    @extra = 0
    @strike = false
  end

  def first_roll_ball
    @first_try = rand(1..10)
    @first_try
  end

  def second_roll_ball
    rest = 10 - @first_try
    @second_try = 1 + rand(rest) if @first_try != 10
    @second_try
  end

  def total_frame
    @total = @first_try + @second_try
    @total
  end

  def strike?
    @strike = true if @first_try == 10
    @strike
  end

  def spare?
    @spare = true if @total == 10 && @first_try != 10
    @spare
  end

  def extra_roll
    @extra = rand(1..10)
    @total += @extra
  end

  def extra_roll_variable
    @extra
  end
end

# test1 = Frame.new()
# puts test1.first_roll_ball
# puts test1.second_roll_ball
