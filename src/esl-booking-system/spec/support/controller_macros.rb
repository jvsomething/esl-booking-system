module ControllerMacros

  def login_student
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:student]
      student = FactoryGirl.create(:student)
      sign_in student
    end
  end

  def login_subscribed_student
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:student]
      subscription = FactoryGirl.create(:subscription, max_daily:3)
      student = FactoryGirl.create(:student, subscription_id: subscription.id)
      sign_in student
    end
  end



end