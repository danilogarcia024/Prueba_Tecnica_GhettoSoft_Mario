class UserPermission < ActiveRecord::Base
	#Validations
	validates :user_id, presence: true, numericality: true
	validates :permision_id, presence: true, numericality: true

	#Asociations
	belongs_to :user, foreign_key: 'user_id', validate: true
	belongs_to :permission, foreign_key: "permision_id", validate: true
end