# frozen_string_literal: true

require_relative 'frame'

# This class represents the bowling game with all the required rules
class Game
  def initialize
    @actual_frame = nil
    @next_frame = nil
    @all_frames = []
    @total_score = 0
    @round = 0
  end

  def first_roll_ball
    @actual_frame = Frame.new
    @actual_frame.first_roll_ball
    @actual_frame.second_roll_ball
    @actual_frame.total_frame
  end

  def make_frame(frame)
    frame.first_roll_ball
    frame.second_roll_ball
    frame.total_frame
  end

  def make_round
    @next_frame = Frame.new
    make_frame(@next_frame)
    @actual_frame.total += @next_frame.first_try if @actual_frame.spare?
    @actual_frame.total += @next_frame.total if @actual_frame.strike?
    @total_score += @actual_frame.total
    @all_frames[@round] = @actual_frame
    @all_frames[@round + 1] = @next_frame
    @round += 1
    @actual_frame = @next_frame
  end

  def roll_ball
    if @actual_frame.nil?
      first_roll_ball
      return
    end
    make_round
  end

  def total_score_variable
    @total_score
  end

  def all_frames_variable
    @all_frames
  end

  def make_extra_round
    @all_frames[9].extra_roll
    @total_score += @all_frames[9].extra_roll_variable
  end

  def run_game
    roll_ball
    9.times do |i|
      roll_ball
      print(@all_frames[i], i)
    end
    @total_score += @all_frames[9].total_frame
    make_extra_round if @all_frames[9].strike? == true || @all_frames[9].spare?
    print(@all_frames[9], 9)
  end

  def print(frame, index)
    puts "ROUND: #{index + 1}"
    puts "Primer tiro: #{frame.first_try}"
    puts "Segundo tiro: #{frame.second_try}"
    puts total_score_variable
    puts "Extra: #{@all_frames[9].extra_roll_variable}" if index == 9
    puts ''
  end
end
