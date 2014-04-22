require 'spec_helper'

describe Message do
  it { should belong_to :user }
  it { should validate_presence_of :body }
  it { should validate_presence_of :to }
  it { should validate_presence_of :from }

end
