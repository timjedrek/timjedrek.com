class Message < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  validates :email, presence: true
end
