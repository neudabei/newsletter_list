class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :newsletter

  validates_uniqueness_of :user
end