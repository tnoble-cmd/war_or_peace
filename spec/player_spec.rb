require 'rspec'
require './lib/player'
require './lib/deck'
require './lib/card'

RSpec.describe Player do
    
    before (:each) do
        @card1 = Card.new(:diamond, 'Queen', 12)
        @card2 = Card.new(:spade, '3', 3)
        @card3 = Card.new(:heart, 'Ace', 14)
        @deck1 = Deck.new([@card1, @card2, @card3])

        @player1 = Player.new('Clarisa', @deck1)
    end
    
    it 'exists' do
        
        
        expect(@player1).to be_an_instance_of(Player)
    end

    




end