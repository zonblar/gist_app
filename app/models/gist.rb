class Gist < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :content, presence: true

  include AlgoliaSearch

  algoliasearch do
    attribute :name, :description, :content, :is_public => true
  end

end
