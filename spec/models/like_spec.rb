require 'rails_helper'

RSpec.describe Like, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "associations" do
    it { should belong_to(:user).optional }
    it { should belong_to(:post).optional }
  end
end
