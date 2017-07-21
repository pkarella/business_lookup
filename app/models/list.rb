class List < ApplicationRecord
  validates :name, :presence => true
validates :address, :presence => true
validates :description, :presence => true

scope :search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%")}
end
