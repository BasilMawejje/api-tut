require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :name}
  end

  describe 'associations' do
    it { is_expected.to have_many(:albums).through(:purchases) }
  end

  context 'validations' do
    it {is_expected.to validate_presence_of(:name)}
  end
end
