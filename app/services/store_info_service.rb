class StoreInfoService
  def stores(zip)
    stores_array =  BestBuyService.new.stores(zip)
    stores_array.map do |store|
      Store.new(store)
    end
  end

end
