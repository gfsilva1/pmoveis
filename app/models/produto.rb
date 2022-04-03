class Produto < ApplicationRecord
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_product,
    against: [ :nome, :tipo ],
    using: {
      tsearch: { prefix: true }
    }
end
