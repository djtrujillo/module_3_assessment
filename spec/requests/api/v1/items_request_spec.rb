require 'rails_helper'

describe "Items API" do
  it "can send a list of items" do
    create_list(:item, 3)

    get '/api/v1/items'

    expect(response).to be_success

    items = JSON.parse(response.body)

    expect(items.count).to eq(3)
  end

  it "can return one item" do
    id = create(:item).id

    get "/api/v1/items/#{id}"

    expect(response).to be_success

    item = JSON.parse(response.body)

    expect(item["id"]).to eq(id)
  end

  it "can delete an item" do
    id = create(:item).id
    expect(Item.all.count).to eq(1)

    delete "/api/v1/items/#{id}"

    expect(response).to be_success

    expect(Item.count).to be(0)
  end

  it "can create new item" do
    item_params = {name: "item", description: "description", image_url: "www.example.com" }

    post '/api/v1/items', {item: item_params}

    expect(response).to be_success

    item = JSON.parse(response.body)

    expect(item["name"]).to eq("item")
    expect(item["description"]).to eq("description")
    expect(item["image_url"]).to eq("www.example.com")
  end
end
