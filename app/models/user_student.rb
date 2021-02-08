class UserStudent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
         has_and_belongs_to_many :classes 
         has_many :notes 
         has_many :comments 
         has_many :commented_notes, through: :comments, source: :notes 
end
