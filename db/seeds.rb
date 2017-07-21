class Seed

  def self.begin
    seed = Seed.new
    seed.generate_lists
  end

  def generate_lists
    20.times do |i|

      list = List.create!(
        name: Faker::Book.author,
        address: Faker::Address.street_address,
        description: Faker::ChuckNorris.fact
      )
       puts "List #{i}: name is #{list.name} and quotation is '#{list.description}'"
    end
  end
end

Seed.begin
