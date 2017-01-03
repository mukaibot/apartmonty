class SearchController < ApplicationController
  def apartment_search
    @apartments = Apartment.where(search_param).paginate(page: params[:page])
    render 'apartments/index'
  end

  def filter_search
    render params[:filter]
  end

  private
    def search_param
      { params[:key] => params[:value] }
    end
end
