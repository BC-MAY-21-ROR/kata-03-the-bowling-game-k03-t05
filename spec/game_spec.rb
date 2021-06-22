require_relative '../bowling_game/game'

RSpec.describe Game do
    before do
        @game = Game.new
    end

    it 'Game is a Class' do
        expect(Game).to be_a Class
    end

    it 'can create a bowling game' do
        expect(@game).to be_a Game
    end

    it 'can have a total score' do
        @game.roll_ball
        @game.roll_ball
        @game.roll_ball
        expect(@game.total_score_variable).to be_a Numeric
    end

    it 'can save frames' do
        @game.roll_ball
        @game.roll_ball
        @game.roll_ball
        frames = @game.all_frames_variable
        size = frames.length
        expect(size).to eql 3
    end

    it 'can run' do
        @game.run_game
        frames = @game.all_frames_variable
        size = frames.length
        expect(size).to eql 10
    end
end