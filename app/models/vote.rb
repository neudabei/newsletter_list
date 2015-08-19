class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :newsletter
  # polymorphic? 
  # associate with newsletter 
end