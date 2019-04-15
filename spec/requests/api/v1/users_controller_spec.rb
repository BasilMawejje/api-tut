require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe 'GET /v1/users' do
    context 'return 1 user' do
      let!(:user) {create(:user, name: 'Basil')}

      it 'should return a user' do
        get :index

        expect(response.status).to eq 200
      end
    end

    context 'return 5 users' do
      before do
        5.times {create(:user)}
      end

      it 'gets 5 users' do
        get :index

        expect(response_json.count).to eq 5
      end
    end
  end
end
