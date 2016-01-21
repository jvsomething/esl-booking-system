require 'rails_helper'

RSpec.describe Lesson, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:lesson).should be_valid
  end
  
end