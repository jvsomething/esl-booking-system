require 'rails_helper'

RSpec.describe Student::StudentController, type: :controller do

  describe 'unauthorized access' do
    it 'redirects to sign in page when accessing lessons page' do
      get :lessons
      expect(response).to redirect_to(new_student_session_path)
    end

    it 'redirects to sign in page when accessing subscriptions page' do
      get :subscriptions
      expect(response).to redirect_to(new_student_session_path)
    end

    it 'redirects to sign in page when accessing teachers page' do
      get :teachers
      expect(response).to redirect_to(new_student_session_path)
    end

    it 'redirects to sign in page when accessing teacher schedules' do
      get :get_teacher_schedule
      expect(response).to redirect_to(new_student_session_path)
    end

    it 'redirects to sign in page when trying to book a lesson' do
      lesson = FactoryGirl.create(:lesson)
      post :book_lesson, id:  lesson
      expect(response).to redirect_to(new_student_session_path)
    end

    it 'redirects to sign in page when cancelling a lesson' do
      lesson = FactoryGirl.create(:lesson)
      post :cancel_lesson, id:  lesson
      expect(response).to redirect_to(new_student_session_path)
    end

    it 'redirects to sign in page when subscribing to a plan' do
      subscription = FactoryGirl.create(:subscription)
      post :subscribe, id:  subscription
      expect(response).to redirect_to(new_student_session_path)
    end
  end

  describe '#GET lessons' do
    login_student
    it 'responds successfully' do
      get :lessons
      expect(response).to have_http_status(:success)
    end

    it 'populates array of lessons'
  end

  describe '#GET teachers' do
    login_student
    it 'responds successfully' do
      get :teachers
      expect(response).to have_http_status(:success)
    end

    it 'populates array of teachers'
  end

  describe '#GET subscriptions' do
    login_student
    it 'responds successfully' do
      get :teachers
      expect(response).to have_http_status(:success)
    end

    it 'populates array of subscriptions'
  end

  describe 'subscribing to a plan' do
    login_student
    it 'redirects to teachers path after subscribing' do
      subscription = FactoryGirl.create(:subscription)
      post :subscribe, id:  subscription
      expect(response).to redirect_to(teachers_path)
    end
  end


  describe 'booking a lesson' do
    login_subscribed_student

    it 'creates a new Lesson' do
      expect do
        lesson = FactoryGirl.create(:lesson)
        post :book_lesson, id:  lesson
      end.to change(Lesson,:count).by(1)
    end

    it 'it does not allow booking when not subscribed'
    it 'it does not allow booking of unavailable schedules'
    it 'it does not allow booking after maxing daily subscription'

  end

  describe 'cancelling a lesson' do
    login_student
    it 'redirects to lessons page after cancelling' do
      lesson = FactoryGirl.create(:lesson)
      post :cancel_lesson, id:  lesson
      expect(response).to redirect_to(lessons_path)
    end

    it 'does not allow cancellation of non-existent lessons'
    it 'does not allow cancellation of old lessons'
    it 'does not allow cancelling other student lessons'
    it 'opens the schedule after successful cancellation'

  end

end