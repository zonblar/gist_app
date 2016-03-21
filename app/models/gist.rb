class Gist < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :content, presence: true
end
