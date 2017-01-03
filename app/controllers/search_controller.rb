class SearchController < ApplicationController
  def search
    @apartments = Apartment.where(search_param).paginate(page: params[:page])
    render 'apartments/index'
  end

  private
    def search_param
      { params[:key] => params[:value] }
    end
end
