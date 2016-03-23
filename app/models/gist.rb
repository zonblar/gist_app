class Gist < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :content, presence: true

  scoped_search :on => :name, :complete_value => :true
  scoped_search :on => :description, :complete_value => :false
  scoped_search :on => :content, :complete_value => :false
end
