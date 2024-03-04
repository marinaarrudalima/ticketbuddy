class Ticket < ApplicationRecord
  belongs_to :user
  has_one :order

  enum status: {
    pending: 0,
    sold: 1
  }
end
