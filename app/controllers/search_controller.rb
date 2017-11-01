class SearchController < ApplicationController
  def index
    @stores = StoreInfoService.new.stores(params['q'])
  end

end
