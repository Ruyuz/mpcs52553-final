class Purchase < ApplicationRecord
  belongs_to :User
  belongs_to :Concert

  validates :user_id, presence: true
  validates :concert_id, presence: true

end
