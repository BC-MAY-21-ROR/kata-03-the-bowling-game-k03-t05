require './frame'

RSpec.describe Frame do
    let(:test_frame) {Frame.new}
    context 'regresar el resultado del primer intento' do
        it 'regresa el primer intento' do
            expect(test_frame.first_roll_ball).not_to be_empty
        end
    end
end