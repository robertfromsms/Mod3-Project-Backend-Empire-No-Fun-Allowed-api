class Duty < ApplicationRecord
	has_many :assignments
	has_many :personnels, through: :assignments

	belongs_to :personnel

	def officer
		self.personnel
	end

	def troopers
		self.personnels
	end

	validates :location, presence: true
    validates :description, presence: true
    validates :personnel_id, presence: true
end
