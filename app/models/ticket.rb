class Ticket < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD

  include PgSearch::Model
  pg_search_scope :search_by_artist,
    against: [ :artist ],
    using: {
      tsearch: { prefix: true }
    }
=======
  has_one :order
>>>>>>> master
end
