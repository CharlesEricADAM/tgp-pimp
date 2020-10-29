class Gossip < ApplicationRecord
  validates :title, length: {minimum: 3, maximum: 14, message: "must be between 3 and 14 characters long"}
  validates :content, presence: {message: "can't be blank"}

  belongs_to :user
  has_many :join_table_tag_gossips
  has_many :tags, through: :join_table_tag_gossips
end
