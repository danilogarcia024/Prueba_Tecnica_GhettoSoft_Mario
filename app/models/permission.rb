class Permission < ActiveRecord::Base
  #Validations
  validates :nombre, presence: true

  #Asociations
  has_many :user_permissions
  has_many :users, through: :user_permissions
end