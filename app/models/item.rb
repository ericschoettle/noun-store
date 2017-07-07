class Item < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :tags
end
