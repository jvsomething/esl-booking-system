class Subscription < ActiveRecord::Base

  validates :name, presence: true
  validates :max_daily, numericality: { only_integer: true }

end
