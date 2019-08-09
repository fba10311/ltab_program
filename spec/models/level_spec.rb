require 'rails_helper'

RSpec.describe Level, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:bouts) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
