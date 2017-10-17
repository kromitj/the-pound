class ShelterAdmin < ApplicationRecord
	belongs_to :admin_user
	belongs_to :user
	belongs_to :shelter

	validates :admin_user_id, presence: true
end
