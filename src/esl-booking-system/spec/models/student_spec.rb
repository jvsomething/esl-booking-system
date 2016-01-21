require 'rails_helper'

RSpec.describe Student, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:student).should be_valid
  end

end