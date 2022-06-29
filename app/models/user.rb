class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  belongs_to :role 

  def admin?
    role.name == 'Admin'
  end

  def self.ransackable_attributes(auth_object = nil)
    %w(email role)
  end
end
