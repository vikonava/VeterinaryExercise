class Appointment < ApplicationRecord
  belongs_to :pet
	has_one :owner, through: :pet

	validate :cannot_be_in_the_past

	attr_accessor :customer_id

	def cannot_be_in_the_past
		errors.add(:date, "can't be in the past") if !date.blank? and date < Time.now
	end
end
