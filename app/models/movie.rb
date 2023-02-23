class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :overview, presence: true
end
