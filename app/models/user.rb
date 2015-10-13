class User < ActiveRecord::Base
  has_many :comments, as: :commentable
  has_many :links

  validates_presence_of :name, :password, :email
  validates_uniqueness_of :name, :email

end
