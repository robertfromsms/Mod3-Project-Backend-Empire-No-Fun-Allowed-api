class Personnel < ApplicationRecord
	has_many :assignments
	has_many :duties, through: :assignments

	def officer_duties
		Duty.where(personnel_id: self.id)
	end

	validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
