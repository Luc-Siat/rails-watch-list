class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, :movie, :list, presence: true
  validates :movie, uniqueness: { scope: :list }
  validates_length_of :comment, minimum: 6
end
