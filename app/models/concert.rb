class Concert < ApplicationRecord

  belongs_to :singer, optional: true

  validates :name, :city, :date, :time, :address, presence: true
  validates :name, uniqueness: true

end
