require 'rails_helper'

RSpec.describe Bout, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:rounds) }

    it { should have_many(:team_assignments) }

    it { should belong_to(:level) }

    end

    describe "InDirect Associations" do

    it { should have_many(:teams) }

    end

    describe "Validations" do
      
    end
end
