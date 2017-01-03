class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show]

  def index
    @apartments = Apartment.all.paginate(page: params[:page])
  end

  def show
  end

  private
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end
end
