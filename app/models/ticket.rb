class Ticket < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_one :order, dependent: :destroy

  pg_search_scope :search_by_artist,
    against: [ :artist ],
    using: {
      tsearch: { prefix: true }
    }
  enum status: {
    pending: 0,
    sold: 1
  }
end
