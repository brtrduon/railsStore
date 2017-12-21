class Store < ActiveRecord::Base
  belongs_to :user
  has_many :carts, dependent: :destroy
  has_many :users, through: :carts
  validates :name, :price, :quantity, presence: true
end
