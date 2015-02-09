class User < ActiveRecord::Base
  #Validations
  validates :Nombre, :Apellido, :Email, presence: true
  validates :Cedula, numericality: true

  #Asociations
  has_many :user_permissions
  has_many :permissions, through: :user_permissions


  def full_name
    if self.Nombre.nil? && self.Apellido.nil?
      ''
  	else
      self.Nombre + ' ' + self.Apellido
  	end
  end
end