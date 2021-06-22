require_relative '../bowling_game/frame'

RSpec.describe Frame do
    before do
        @frame = Frame.new
    end
    it 'can do a strike' do
        @frame.first_try = 10
        expect(@frame.strike?).to eql true
    end
    it 'can do a spare' do
        @frame.first_try = 2
        @frame.second_try = 8
        @frame.total_frame
        expect(@frame.spare?).to eql true
    end
    it 'game total score is equal to 10 ' do
        @frame.first_try = 2
        @frame.second_try = 8
        expect(@frame.total_frame).to eql 10
    end
    it 'first roll ball' do
        expect(@frame.first_roll_ball).to be_between(0, 10).inclusive
    end
    it 'second_roll_bal' do
        top = 10 - @frame.first_roll_ball
        expect(@frame.second_roll_ball).to be_between(0, top).inclusive
    end
end