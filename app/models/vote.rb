class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :newsletter, counter_cache: true

  validates_uniqueness_of :user_id, scope: [:newsletter_id]
  # each user can only vote once on a newsletter
end