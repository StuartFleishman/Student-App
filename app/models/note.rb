class Note < ApplicationRecord
  belongs_to :class 
  belongs_to :user_student 
end
