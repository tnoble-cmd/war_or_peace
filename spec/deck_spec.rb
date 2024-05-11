require 'rspec'
require './lib/deck'
require './lib/card'

RSpec.describe Deck do
    
    before(:each) do
        @card1 = Card.new(:diamond, 'Queen', 12)
        @card2 = Card.new(:spade, 'King', 13)
        @card3 = Card.new(:diamond, '3', 3)
        

        @deck = Deck.new([@card1, @card2, @card3])
    end
    
    it "exists" do
        

        expect(@deck).to be_an_instance_of(Deck)
    end
    
    it "takes cards" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, 'King', 13)
        card3 = Card.new(:diamond, '3', 3)

        deck = Deck.new([card1, card2, card3])
    end

    it "returns index with rank_of_card_at" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, 'King', 13)
        card3 = Card.new(:diamond, '3', 3)

        deck = Deck.new([card1, card2, card3])
        expect(deck.rank_of_cards_at(0)).to eq(12)
    end

    it 'high_ranking_cards checks if elements are >= 11' do
       card1 = Card.new(:hearts, '10', 10)
       card2 = Card.new(:diamonds, 'Jack', 11)
       card3 = Card.new(:spades, 'Queen', 12)
       card4 = Card.new(:clubs, 'Ace', 14)
       card5 = Card.new(:clubs, '7', 7)

       deck = Deck.new([card1, card2, card3, card4, card5])

       expect(deck.high_ranking_cards.length).to eq(3)
    end

    it 'Calculates percent_high_ranking' do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, 'King', 13)
        card3 = Card.new(:diamond, '3', 3)
        card4 = Card.new(:spade, 'Ace', 14)

        deck = Deck.new([card1, card2, card3, card4])
        #it will be a float .to eq
        expect(deck.percent_high_ranking).to eq(75.0)
    end

    it 'Removes first card. remove_card' do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, 'King', 13)
        card3 = Card.new(:diamond, '3', 3)
        card4 = Card.new(:spade, 'Ace', 14)

        deck = Deck.new([card1, card2, card3, card4])

        expect(deck.remove_card).to eq(card1)
    end

    xit 'Add_card to the bottom of deck' do
        
        card4 = Card.new(:clubs, 'Ace', 14)
        @deck.add_card(card4)
        
        expect(@deck.cards).to eq([@card1, @card2, @card3, card4])

    end
end