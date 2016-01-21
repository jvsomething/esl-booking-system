require 'rails_helper'

RSpec.describe Schedule, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:schedule).should be_valid
  end

end