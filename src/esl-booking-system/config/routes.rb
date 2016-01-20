Rails.application.routes.draw do

  devise_for :students, controllers: {
      registrations: 'student/registrations',
      sessions: 'student/sessions',
  }

  get 'lessons' => 'student/student#lessons'
  get 'teachers' => 'student/student#teachers'
  get 'subscriptions' => 'student/student#subscriptions'

  namespace :student do
    namespace :student do
      post 'subscribe', :path => 'subscribe/:id'
    end
  end

  root 'student/student#lessons'

end
