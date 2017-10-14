 class User < ApplicationRecord
 	has_one :shelter_admin
 	belongs_to :company
end
