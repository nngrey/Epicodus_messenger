require 'spec_helper'

describe User do
  it { should have_many :messages }
  it { should have_many :contacts }
  it { should validate_presence_of :number }
end
