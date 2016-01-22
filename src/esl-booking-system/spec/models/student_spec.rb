require 'rails_helper'

RSpec.describe Student, type: :model do

  it 'has a valid factory' do
    FactoryGirl.create(:student).should be_valid
  end

  it 'is invalid without a name' do
    FactoryGirl.build(:student, name: nil).should_not be_valid
  end

  it 'is invalid without an email' do
    FactoryGirl.build(:student, email: nil).should_not be_valid
  end

  it 'is invalid if password is not confirmed' do
    FactoryGirl.build(:student, password_confirmation: nil).should_not be_valid
  end

  it 'is invalid if confirmed password does not match password' do
    FactoryGirl.build(:student, password: 'password12345', password_confirmation: 'password54321').should_not be_valid
  end

  it 'is invalid if password is not long enough' do
    FactoryGirl.build(:student, password: '1234567', password_confirmation: '1234567').should_not be_valid
  end

  it 'does not allow duplicate emails' do
    email = 'test_email@yahoo.com'
    FactoryGirl.create(:student, email: email).should be_valid, 'should be valid'
    expect{FactoryGirl.create(:student, email: email)}.to raise_error
  end

end