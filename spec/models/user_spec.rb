require 'spec_helper'

describe User do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_uniqueness_of(:email) }

  it { should have_many(:newsletters) }
  it { should have_many(:votes) }
  it { should have_secure_password }
end