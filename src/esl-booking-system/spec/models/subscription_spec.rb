require 'rails_helper'

RSpec.describe Subscription, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:subscription).should be_valid
  end

end