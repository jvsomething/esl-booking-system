require 'rails_helper'

RSpec.describe Teacher, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:teacher).should be_valid
  end

end