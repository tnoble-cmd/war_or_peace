require 'rspec'
require './lib/turn'
require './lib/player'
require './lib/deck'
require './lib/card'

RSpec.describe Turn do
    
    xit 'exists' do
        @card1 = Card.new(:diamond, 'Queen', 12)
        @card2 = Card.new(:spade, '3', 3)
        @card3 = Card.new(:heart, 'Ace', 14)
        @card4 = Card.new(:heart, 'King', 12)
        @card5 = Card.new(:spade, '10', 10)
        @card6 = Card.new(:heart, '2', 14)

        @deck1 = Deck.new([@card1, @card2, @card3])
        @deck2 = Deck.new([@card4, @card5, @card6])

        @player1 = Player.new('Clarisa', @deck1)
        @player2 = Player.new('John', @deck2)
        @turn = Turn.new(@player1, @player2)

        expect(@turn).to be_an_instance_of(Turn)
    end

    xit 'checks turn type :basic' do

        @card1 = Card.new(:diamond, 'Queen', 12)
        @card2 = Card.new(:spade, '3', 3)
        @card3 = Card.new(:heart, 'Ace', 14)
        @card4 = Card.new(:heart, 'King', 13)
        @card5 = Card.new(:spade, '10', 10)
        @card6 = Card.new(:heart, '2', 14)

        @deck1 = Deck.new([@card1, @card2, @card3])
        @deck2 = Deck.new([@card4, @card5, @card6])

        @player1 = Player.new('Clarisa', @deck1)
        @player2 = Player.new('John', @deck2)
        @turn = Turn.new(@player1, @player2)

        expect(@turn.type).to eq(:basic)
    end

    xit 'checks turn type :war' do

        @card1 = Card.new(:heart, 'Jack', 11)
        @card2 = Card.new(:heart, '10', 10)
        @card3 = Card.new(:heart, '9', 9)
        @card4 = Card.new(:diamond, 'Jack', 11)
        @card5 = Card.new(:heart, '8', 8)
        @card6 = Card.new(:diamond, 'Queen', 12)
        @card7 = Card.new(:heart, '3', 3)
        @card8 = Card.new(:diamond, '2', 2)

        @deck1 = Deck.new([@card1, @card2, @card5, @card8])
        @deck2 = Deck.new([@card4, @card3, @card6, @card7])

        @player1 = Player.new("Megan", @deck1)
        @player2 = Player.new("Aurora", @deck2)

        @turn = Turn.new(@player1, @player2)

        expect(@turn.type).to eq(:war)
    end

    xit 'checks turn type :mutually_assured_destruction' do
        @card1 = Card.new(:heart, 'Jack', 11)
        @card2 = Card.new(:heart, '10', 10)
        @card3 = Card.new(:heart, '9', 9)
        @card4 = Card.new(:diamond, 'Jack', 11)
        @card5 = Card.new(:heart, '8', 8)
        @card6 = Card.new(:diamond, '8', 8)
        @card7 = Card.new(:heart, '3', 3)
        @card8 = Card.new(:diamond, '2', 2)

        @deck1 = Deck.new([@card1, @card2, @card5, @card8])
        @deck2 = Deck.new([@card4, @card3, @card6, @card7])

        @player1 = Player.new("Megan", @deck1)
        @player2 = Player.new("Aurora", @deck2)

        @turn = Turn.new(@player1, @player2)

        expect(@turn.type).to eq(:mutually_assured_destruction?)
    end

    it 'checks winner' do

        @card1 = Card.new(:diamond, 'Queen', 12)
        @card2 = Card.new(:spade, '3', 3)
        @card3 = Card.new(:heart, 'Ace', 14)
        @card4 = Card.new(:heart, 'King', 13)
        @card5 = Card.new(:spade, '10', 10)
        @card6 = Card.new(:heart, '2', 14)

        @deck1 = Deck.new([@card1, @card2, @card3])
        @deck2 = Deck.new([@card4, @card5, @card6])

        @player1 = Player.new('Clarisa', @deck1)
        @player2 = Player.new('John', @deck2)
        @turn = Turn.new(@player1, @player2)

        expect(@turn.winner).to eq("John wins")
    end


end