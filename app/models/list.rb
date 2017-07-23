class List < ApplicationRecord
validates :name, :presence => true
validates :address, :presence => true
validates :description, :presence => true

def self.search(name)
   List.where('lower(name) = ?', name.downcase)
 end

 scope :random_list, -> { order("RANDOM()").first}

end
