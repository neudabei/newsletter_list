class Category < ActiveRecord::Base
  has_many :nl_categories
  has_many :newsletters, through: :nl_categories

  validates_uniqueness_of :name
  validates_presence_of :name
end