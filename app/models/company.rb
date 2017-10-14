class Company < ApplicationRecord
	has_many :users
	has_one :user, foreign_key: :main_contact
end
