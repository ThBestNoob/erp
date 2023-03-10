class Product < ApplicationRecord
    has_many :items
    has_many :orders, through: :items

    validates :name, uniqueness: true
end
