require 'rails_helper'

describe Comment do
  context "description is missing" do
    it "is not valid" do
      expect(Comment.new(id: 1)).not_to be_valid
    end
  end
end