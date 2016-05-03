class Post < ApplicationRecord
  validates_length_of :title, :minimum => 5
  validates :content, presence: true
  validates :post_date, presence: {message: "have to be selected before you save!"}
  extend FriendlyId

  friendly_id :title, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    title_changed?
  end

  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize.to_s
  end
end
