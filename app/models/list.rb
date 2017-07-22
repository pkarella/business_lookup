class List < ApplicationRecord
  validates :name, :presence => true
validates :address, :presence => true
validates :description, :presence => true

def self.search_by_name(name)
   List.where('lower(name) = ?', name.downcase)
 end

 def self.random
   List.order('RANDOM()').first
 end

end
