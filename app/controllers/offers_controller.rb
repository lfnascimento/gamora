class OffersController < ApplicationController

  before_action :set_offers

  def index
  end

  private

  def set_offers
    @offers = Offer.active.order(premium: :desc)
  end

end
