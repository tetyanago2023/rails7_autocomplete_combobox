class Post < ApplicationRecord
  scope :search, ->(query) { where('title LIKE ?', "%#{query}%") if query.present? }

  def to_combobox_display
    title
  end
end
