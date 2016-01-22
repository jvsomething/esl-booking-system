require 'rails_helper'

RSpec.describe Teacher, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:teacher).should be_valid
  end

  it 'is invalid without a name' do
    FactoryGirl.build(:teacher, name: nil).should_not be_valid
  end

  it 'it only accepts 0 or 1 for gender' do
    expect{FactoryGirl.create(:teacher, gender:2)}.to raise_error
  end

end