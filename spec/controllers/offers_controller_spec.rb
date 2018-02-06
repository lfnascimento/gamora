require 'rails_helper'

RSpec.describe OffersController, type: :controller do

  describe 'GET #index' do
    before { get :index }
    it { is_expected.to respond_with(:ok) }
  end

end
