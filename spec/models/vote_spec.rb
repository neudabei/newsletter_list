require 'spec_helper'

describe Vote do
  it { should validate_uniqueness_of(:user_id) }
  # how to limit this to scope: [:voteable_id] as defined in model?
  it { should belong_to(:user) }
  it { should belong_to(:newsletter) }
end