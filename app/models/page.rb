class Page < ApplicationRecord
  validates :title, presence: true
  validates :date, presence: true
  has_rich_text :body

  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :client_websites, -> {where('category = ?', 'Client Websites')}
  scope :example_sites, -> {where('category = ?', 'Example Sites')}
  scope :projects, -> {where('category = ?', 'Projects')}
  scope :articles, -> {where('category = ?', 'Articles')}
end
