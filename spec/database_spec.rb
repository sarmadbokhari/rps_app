require 'spec_helper'

describe 'Database' do
  before do
    @db = RPS::Database.new
  end

  describe "User" do

    xit "can create a user and assign an id" do
      user1 = @db.user.new("Ifu")
      expect(user1.username).to eq("Ifu")
      expect(user1.uid).to be_a(Fixnum)
    end

    xit "can update a users username" do
      user1 = @db.user.new("Ifu")
      user1.name = "Someone Else"
      expect(user1.name).to eq("Someone Else")
    end

  end



end

