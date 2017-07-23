FactoryGirl.define do
  factory(:list) do
    name(Faker::Book.author)
    description(Faker::ChuckNorris.fact)
    address(Faker::Address.street_address)
    
  end
end
