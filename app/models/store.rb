class Store
  attr_reader :name, :city, :distance, :phone_number, :store_type
  def initialize(store_data)
    @name         = store_data["longName"]
    @city         = store_data["city"]
    @distance     = store_data["distance"]
    @phone_number = store_data["phone"]
    @store_type   = store_data["storeType"]
  end

end
