class Teacher < ActiveRecord::Base
  has_many :schedules

  validates_inclusion_of :gender, :in => 0..1
  validates :name, presence: true

end
