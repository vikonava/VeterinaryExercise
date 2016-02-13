class Pet < ApplicationRecord
  belongs_to :owner, class_name: 'User'

	validates :name, :breed, presence: true, length: { maximum: 35 }
	validates :age, :weight, :last_visit, presence: true
end
