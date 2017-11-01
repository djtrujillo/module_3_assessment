require 'rails_helper'

describe StoreInfoService do
  context "class methods" do
    let(:stores) { StoreInfoService.new }
    it "initializes" do
      expect(stores).to be_a StoreInfoService
    end
  end

  context "instance methods" do
    let(:stores) { StoreInfoService.new.stores("80202") }
    it "#stores" do
      expect(stores.count).to eq(17)
      expect(stores).to be_a Array
      expect(stores.first).to be_a Store
    end
  end
end
