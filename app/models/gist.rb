class Gist < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :content, presence: true
end
