class Link < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :user

  validates :url, presence: true

end
