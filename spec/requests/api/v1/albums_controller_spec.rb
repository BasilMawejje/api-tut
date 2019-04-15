require 'rails_helper'

RSpec.describe Api::V1::AlbumsController, type: :controller do
  describe 'GET /v1/albums' do
    context 'return 1 album' do
      let!(:album) {create(:album, title: 'GKMC')}

      it 'should return an album' do
        get :index

        expect(response.status).to eq 200
      end
    end

    context 'return 5 albums' do
      before do
        5.times {create(:album)}
      end

      it 'gets 5 albums' do
        get :index

        expect(response_json.count).to eq 5
      end
    end
  end
end
