require 'rails_helper'

RSpec.describe Round, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:bout) }

    it { should belong_to(:student) }

    it { should belong_to(:team) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
