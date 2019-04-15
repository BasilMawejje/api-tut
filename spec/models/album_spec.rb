require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :title}
  end

  describe "associations" do
    it{ is_expected.to have_many(:users).through(:purchases) }
  end

  context 'validations' do
    it {is_expected.to validate_presence_of :title}
  end
end
