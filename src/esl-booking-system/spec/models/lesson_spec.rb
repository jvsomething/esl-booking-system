require 'rails_helper'

RSpec.describe Lesson, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:lesson).should be_valid
  end

  it 'only accepts 0 or 1 for schedule status' do
    expect{FactoryGirl.create(:lesson, lesson_status:2)}.to raise_error
  end
  
end