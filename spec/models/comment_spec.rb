require 'rails_helper'

describe Comment do

  it { should have_many :comments }
  it { should belong_to :user }
  it { should belong_to :commentable }  

end
