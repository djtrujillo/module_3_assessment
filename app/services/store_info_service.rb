class StoreInfoService
  def stores(zip)
    stores_array =  BestBuyService.new.stores(zip)
    stores_array.map do |store_data|
      Store.new(store_data)
    end

  end

end
