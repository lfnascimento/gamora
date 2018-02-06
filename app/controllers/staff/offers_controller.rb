class Staff::OffersController < ApplicationController

  before_action :set_offers, only: [:index]
  before_action :set_offer, only: [:edit, :update, :destroy, :disable, :enable]

  def index
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.create(offer_params)
    respond_with(@offer, location: staff_offers_path)
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    respond_with(@offer, location: staff_offers_path)
  end

  def destroy
    @offer.destroy
    respond_with(@offer, location: staff_offers_path)
  end

  def disable
    @offer.disabled!
    redirect_to action: 'index'
  end

  def enable
    @offer.active!
    redirect_to action: 'index'
  end

  private

  def set_offers
    @offers = Offer.order(:starts_at)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params
      .require(:offer)
      .permit(:advertiser_name, :url, :description, :starts_at, :ends_at, :premium)
  end
end
