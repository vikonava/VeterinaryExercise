class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	validates :name, presence: true, length: { maximum: 35 }
	validates :zipcode, presence: false, length: { maximum: 5 }
	validates :years_in_practice, allow_nil: true, numericality: { greather_than: 0, less_than: 101 } 

	def full_address
		fAddress = "#{address}"
		fAddress = "#{fAddress}, #{city}" if city
		fAddress = "#{fAddress}, #{state}" if state
		fAddress = "#{fAddress}, #{zipcode}" if zipcode

		fAddress
	end

	def user_type
		return 'Admin' if admin?
		return 'Doctor' if vet?
		return 'Receptionist' if receptionist?
		return 'Customer'
	end
end
