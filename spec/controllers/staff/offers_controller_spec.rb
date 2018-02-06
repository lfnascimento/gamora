require 'rails_helper'

RSpec.describe Staff::OffersController, type: :controller do

  let(:valid_params) { attributes_for(:offer) }
  let(:invalid_params) { attributes_for(:offer, start_at: nil) }
  let(:offer) { create(:offer) }

  describe 'GET #index' do
    before { get :index }

    it { is_expected.to respond_with(:ok) }
  end

  describe 'GET #new' do
    before { get :new }

    it { is_expected.to respond_with(:ok) }
  end

  describe 'POST #create' do

    context 'when params is valid' do
      before { post :create, params: { offer: valid_params } }

      it do
        is_expected.to respond_with(:redirect) 
        is_expected.to set_flash[:notice]
      end
    end

    context 'when params is invalid' do
      before { post :create, params:{ offer: invalid_params } }

      it { is_expected.to respond_with(:redirect) }
    end
  end

  describe 'GET #edit' do
    before { get :edit, params: { id: offer.id } }

    it { is_expected.to respond_with(:ok) }
  end

  describe 'POST #update' do

    context 'when params is valid' do
      before { post :update, params: { id: offer.id, offer: valid_params } }

      it do
        is_expected.to respond_with(:redirect)
        is_expected.to set_flash[:notice]
      end
    end

    context 'when params is invalid' do
      before { post :update, params: { id: offer.id, offer: invalid_params } }

      it { is_expected.to respond_with(:redirect) }
    end
  end

  describe 'DELETE #destroy' do
    before { delete :destroy, params: { id: offer.id } }

    it { is_expected.to respond_with(:redirect) }
  end

  describe 'GET #disable' do
    before { get :disable, params: { id: offer.id } }

    it { is_expected.to respond_with(:redirect) }
  end

  describe 'GET #enable' do
    before { get :enable, params: { id: offer.id } }

    it { is_expected.to respond_with(:redirect) }
  end
end
