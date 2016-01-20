class Student::StudentController < ApplicationController

  before_filter :student_authorized?

  def subscriptions
    @subscriptions = Subscription.all
  end

  def teachers

    page_num = 1
    if params[:page].present?
      page_num = Integer(params[:page]) rescue 1
    end

    @teachers = Teacher.all
    @teachers = @teachers.page(page_num).per(8)

  end

  def search_teacher

  end

  def lessons

  end

  def subscribe
    student = Student.where(:id => current_student.id).first
    student.update(:subscription_id => params[:id].to_i)
    redirect_to subscriptions_path
  end

  private
  def student_authorized?
    unless student_signed_in?
      flash[:danger] = 'You are not authorized to view that page.'
      redirect_to new_student_registration_path
    end
  end

end