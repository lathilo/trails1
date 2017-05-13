require 'rails_helper'

describe User do
  context "email address is missing" do
    it "is not valid" do
      expect(User.new(email: "testtest")).not_to be_valid
    end
  end
end