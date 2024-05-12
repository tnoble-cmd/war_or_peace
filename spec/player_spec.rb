require 'rspec'
require './lib/player'
require './lib/deck'
require './lib/card'

RSpec.describe Player do
    
    before (:each) do
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
    end
    
    it 'exists' do
        
        
        expect(@player1).to be_an_instance_of(Player)
    end

    it 'checks player1 current stack of cards (deck)' do
        
        expect(@player1.stack.cards).to eq([@card1, @card2, @card3])
    end

    it 'checks player2 current stack of cards (deck)' do

        expect(@player2.stack.cards).to eq([@card4, @card5, @card6])
    end

    it 'checks if player has lost' do

        expect(@player1.has_lost?).to eq(false)
    end




end