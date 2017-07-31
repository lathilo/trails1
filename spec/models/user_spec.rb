require 'rails_helper'

#describe User do
  #context "email address is missing" do
    #it "is not valid" do
      #expect(User.new(email: "testtest")).not_to be_valid
    #end
  #end
#end


describe User, type: :model do
  it "should not validate users without an email address" do
    @user = FactoryGirl.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end
end

# 6.15 password validation test
context "Passwort is missing" do

  it "is not valid" do
    expect(User.new(password:"")).not_to be_valid
  end

end

