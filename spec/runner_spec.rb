require './lib/wop_runner'

RSpec.describe Game do

    it 'exists' do

        game = Game.new
        expect(game).to be_an_instance_of(Game)
    end
end