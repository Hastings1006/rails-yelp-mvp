class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # restaurant = Restaurant.new(name: "asdf", address: "asd123", phone_number: "12345", category: "italian")
  validates :name, :address, :category, presence: true
  validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }

end
