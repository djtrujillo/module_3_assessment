class BestBuyService
  def initialize
    # response = @conn.get
    # parsed = JSON.parse(response.body)
  end

  def stores(zip)
    @conn = Faraday.new(url: "https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=distance,phone,storeType,city,longName&pageSize=17&apiKey=#{ENV['api_key']}")
    response = @conn.get
    parsed = JSON.parse(response.body)["stores"]
  end

  private
    attr_reader :conn

end
