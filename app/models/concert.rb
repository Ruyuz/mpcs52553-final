class Concert < ApplicationRecord

  has_many :purchases

  validates :name, :city, :date, :time, :address, presence: true
  validates :name, uniqueness: true

end
