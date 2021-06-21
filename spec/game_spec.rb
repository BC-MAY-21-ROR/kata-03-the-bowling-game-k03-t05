
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

    # it 'Bowling Game have 10 frames' do
    #     expect(@game.get_frames).to eql 10
    # end

    it 'can have a total score' do
        expect(@game.get_score).to eql 0
    end
    
end