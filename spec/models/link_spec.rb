require 'rails_helper'

describe Link do

  describe "validations" do

    it { should belong_to :user }
    it { should have_many :comments }
    it { should validate_presence_of :url }


  end
end
