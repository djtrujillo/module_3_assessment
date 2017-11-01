require 'rails_helper'

describe "factory girl works" do
  it "registers factories" do
    create_list(:item, 3)
    expect(Item.all.count).to eq(3)
  end
end
