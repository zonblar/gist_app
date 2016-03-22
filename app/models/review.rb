class Review < ActiveRecord::Base
  belongs_to :gist
  belongs_to :user
  validates :content, presence: true
end
