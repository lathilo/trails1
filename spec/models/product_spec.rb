require 'rails_helper'

describe Product do
  context "when the product has comments" do
    before do
      @product = Product.create!(name: "TestTable", description: "Toll", price: 20, colour: "red", image_url: "Text.jpg")
      #@user = User.create!(email: "xyz@hallo.de", password: "abc1234578")
      @user = FactoryGirl.create(:user)
      @product.comments.create!(rating: 1, user: @user, body: " Awful table")
      @product.comments.create!(rating: 3, user: @user, body: " Ok table")
      @product.comments.create!(rating: 5, user: @user, body: " Nice table")
    end

    it "returns the average of 3" do
    expect(@product.average_rating).to eq 3
    end
  end


  context "Product Name missing" do
    it "is not valid" do
      expect(Product.new(description: "testtest")).not_to be_valid
    end
  end

  context

end


