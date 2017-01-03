class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show]

  def index
    @apartments = Apartment.limit(25)
  end

  def show
  end

  private
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end
end
