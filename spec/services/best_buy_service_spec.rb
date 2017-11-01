require 'rails_helper'

describe BestBuyService do
  context "class methods" do
    let(:best_buy) { BestBuyService.new }
    it "initializes" do
      expect(best_buy).to be_a BestBuyService
    end
  end

  context "instance methods" do
    let(:stores) { BestBuyService.new.stores("80202") }
    it "#stores" do
      expect(stores.count).to eq(17)
      expect(stores).to be_a Array
    end
  end
end
