class Ticket < ApplicationRecord
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search_by_artist,
    against: [ :artist ],
    using: {
      tsearch: { prefix: true }
    }
end
