class Item < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images
  belongs_to :category
  belongs_to :seller, class_name: "User"
end
