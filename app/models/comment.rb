class Comment < ApplicationRecord
  belongs_to :note 
  belongs_to :user_student 
end
