require './frame.rb'

class Game
    def initialize
       # @frames = []
        @frame = Frame.new
        @score = 0
    end

    def get_frames
        @frames
    end

    def get_score
        @score
    end

    def roll_ball
        @frame.first_roll_ball
        # @score = @score + next_try if @frame.strike? == true 
        @frame.second_roll_ball
        @frame.total_score
        # @score = @score + next_try if @frame.spare? == true 
    end
end

bowling_game = Game.new
puts bowling_game.roll_ball
