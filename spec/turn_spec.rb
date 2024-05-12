require 'rspec'
require './lib/turn'
require './lib/player'
require './lib/deck'
require './lib/card'

RSpec.describe Turn do
    
    before(:each) do
        @card1 = Card.new(:diamond, 'Queen', 12)
        @card2 = Card.new(:spade, '3', 3)
        @card3 = Card.new(:heart, 'Ace', 14)
        @card4 = Card.new(:heart, 'King', 13)
        @card5 = Card.new(:spade, '10', 10)
        @card6 = Card.new(:heart, '2', 2)

        @deck1 = Deck.new([@card1, @card2, @card3])
        @deck2 = Deck.new([@card4, @card5, @card6])

        @player1 = Player.new('Clarisa', @deck1)
        @player2 = Player.new('John', @deck2)
        @turn = Turn.new(@player1, @player2)
    end
    it 'exists' do

        expect(@turn).to be_an_instance_of(Turn)
    end



end