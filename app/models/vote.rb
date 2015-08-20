class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :newsletter
end