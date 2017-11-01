class BestBuyService
  def initialize
    # response = @conn.get
    # parsed = JSON.parse(response.body)
  end

  def stores(zip)
    @conn = Faraday.new(url: "https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=storeId,storeType,name&pageSize=2&apiKey=#{ENV['api_key']}")

    response = @conn.get
    parsed = JSON.parse(response.body)
    binding.pry
  end

  private
    attr_reader :conn

end
