class BestBuyService
  def initialize
    @conn = Faraday.new(url: "https://api.bestbuy.com/v1/stores(area(55423,10))?format=json&show=storeId,storeType,name&pageSize=2&apiKey=#{ENV['api_key']}")
    response = JSON.parse(response.body)
  end

  def stores(zip)
    
  end

end
