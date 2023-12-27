class Tattoo < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :master, class_name: 'User', foreign_key: 'user_id', optional: true
  belongs_to :user, optional: true

  mount_uploader :tattoo_image, TattooImageUploader

  acts_as_taggable_on :parts
  acts_as_taggable_on :styles

  validates :title, :tattoo_image, presence: true
end
