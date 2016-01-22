require 'rails_helper'

RSpec.describe Schedule, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:schedule).should be_valid
  end

  it 'only accepts 0 or 1 for schedule status' do
    expect{FactoryGirl.create(:schedule, schedule_status:2)}.to raise_error
  end

end