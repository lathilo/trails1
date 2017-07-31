

FactoryGirl.define do

  sequence(:name) {|n|  "test_product_#{n}"}
  sequence(:description) {|n|  "description of test_product_#{n}"}

  factory :product do
    name
    description
    colour "red"
    image_url "Product1.jpg"
    price "150"

  end

end