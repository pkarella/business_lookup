FactoryGirl.define do
  factory(:list) do
    name(Faker::Book.author)
    description(Faker::ChuckNorris.fact)
    address(Faker::Address.street_address)
    category('List')
  end
end
