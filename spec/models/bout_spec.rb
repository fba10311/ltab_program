require 'rails_helper'

RSpec.describe Bout, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:level) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
