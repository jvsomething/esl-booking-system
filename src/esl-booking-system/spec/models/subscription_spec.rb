require 'rails_helper'

RSpec.describe Subscription, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:subscription).should be_valid
  end

  it 'is invalid without a name' do
    FactoryGirl.build(:subscription, name: nil).should_not be_valid
  end

  it 'it only accepts integers for max_daily' do
    expect{FactoryGirl.create(:subscription, max_daily:5.0)}.to raise_error
  end

end