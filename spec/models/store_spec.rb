require 'rails_helper'

describe Store do
  context "class methods" do
  let(:store) { Store.new("longName" => "Something", "city" => "Denver", "distance" => 12, "phone" => "1234567", "store_type" => "something") }
    it "initializes with store data" do
      expect(store.name).to eq("Something")
      expect(store.city).to eq("Denver")
      expect(store.distance).to eq(12)
      expect(store.phone_number).to eq("1234567")
      expect(store.store_type).to eq("something")
    end
  end
end
