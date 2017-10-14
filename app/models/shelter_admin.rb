class ShelterAdmin < ApplicationRecord
	belongs_to :admin_user
	belongs_to :user

	validates :admin_user_id, presence: true
end
