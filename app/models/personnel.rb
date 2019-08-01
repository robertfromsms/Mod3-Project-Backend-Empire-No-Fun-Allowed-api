class Personnel < ApplicationRecord
	has_many :assignments
	has_many :duties, through: :assignments

	def officer_duties
		Duty.where(personnel_id: self.id)
	end

	def officer_duties_assignments
		duties = self.officer_duties
		
		duty_ids = duties.map do |duty|
			duty.id
		end
		
		Assignment.where(duty_id: duty_ids)
	end

	validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
