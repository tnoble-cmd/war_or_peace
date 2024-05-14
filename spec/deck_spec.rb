require 'rspec'
require './lib/deck'
require './lib/card'

RSpec.describe Deck do
    it "exists" do
        deck = Deck.new

        expect(deck).to be_an_instance_of(Deck)
    end

    it 'dealer works' do
        deck = Deck.new
        deck.dealer

        expect(deck.cards.length).to eq(52)
    end
    
    it "returns index with rank_of_card_at" do
        deck = Deck.new
        deck.dealer
        
        expect(deck.rank_of_cards_at(0)).to eq(2)
    end

    it 'high_ranking_cards checks if elements are >= 11' do
        deck = Deck.new
        deck.dealer

       

       expect(deck.high_ranking_cards.length).to eq(16)
    end

    it 'Calculates percent_high_ranking' do
        deck = Deck.new
        deck.dealer
        #it will be a float .to eq
        expect(deck.percent_high_ranking).to eq(30.77)
    end

    it 'Removes first card. remove_card' do
        deck = Deck.new
        deck.dealer
        deck.remove_card(0)
        expect(deck.cards.length).to eq(51)
    end

    it 'Add_card to the bottom of deck' do
        deck = Deck.new
        deck.dealer
        card4 = Card.new(:clubs, 'Ace', 14)
        deck.add_card(card4)
        
        expect(deck.cards.length).to eq(53)

    end
end