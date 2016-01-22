class Lesson < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :student
  belongs_to :subscription

  validates_inclusion_of :lesson_status, :in => 0..1

end
