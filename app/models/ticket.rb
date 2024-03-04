class Ticket < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_one :order

  pg_search_scope :search_by_artist,
    against: [ :artist ],
    using: {
      tsearch: { prefix: true }
    }
end
