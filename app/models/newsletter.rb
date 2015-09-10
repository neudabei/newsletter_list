class Newsletter < ActiveRecord::Base
  belongs_to :user
  has_many :nl_categories
  has_many :categories, through: :nl_categories
  has_many :votes

  validates_presence_of :name, :website_url
  validates_uniqueness_of :website_url

  default_scope -> { order(votes_count: :desc) }
end