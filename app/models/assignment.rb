class Assignment < ApplicationRecord
	belongs_to :personnel
	belongs_to :duty

	validates :personnel_id, presence: true
    validates :duty_id, presence: true
end
