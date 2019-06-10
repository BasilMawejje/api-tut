require 'rails_helper'

RSpec.describe Api::V1::PurchasesController, type: :controller do
  describe 'POST /v1/purchases' do
    context 'create a purchase' do
      let!(:album) {create(:album, id: '1')}
      let!(:user) {create(:user, id: '1')}

      it 'should create a purchase' do
        post :create
        # expect { response }.to change(Purchase, :count).by(1)
        expect(response.status).to eq 201
      end
    end
  end
end
