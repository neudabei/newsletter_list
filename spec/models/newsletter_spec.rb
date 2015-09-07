require 'spec_helper'

# run $ rake:db:test:prepare if necessary

describe Newsletter do

  it { should have_many (:categories) }
  it { should validate_presence_of (:name) }
  it { should validate_presence_of (:website_url) }
  it { should validate_uniqueness_of (:website_url)} 

end

