class Pokemon < ApplicationRecord
  scope :search, ->(query) { where("name LIKE ?", "#{sanitize_sql_like(query)}%") }
end
