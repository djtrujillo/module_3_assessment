require 'rails_helper'

describe BestBuyService do
  context "class methods" do
    let(:best_buy) { BestBuyService.new }
    it "initializes" do
      expect(best_buy).to be_a BestBuyService
    end
  end
end
