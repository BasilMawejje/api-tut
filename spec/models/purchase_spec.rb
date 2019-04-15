require 'rails_helper'

RSpec.describe Purchase, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :album_id}
    it {is_expected.to have_db_column :user_id}
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :album_id}
    it { is_expected.to validate_presence_of :user_id}
  end

  context 'associations' do
    it { is_expected.to belong_to(:album) }
    it { is_expected.to belong_to(:user) }
  end
end
