class Schedule < ActiveRecord::Base
  belongs_to :teacher

  validates_inclusion_of :schedule_status, :in => 0..1

end
