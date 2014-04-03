require 'spec_helper'

describe 'Database' do
  before do
    @db = RPS.db
  end

  describe "User" do

    it "can create a user and assign an id" do
      user1 = @db.create_user("Ifu", "password")
      expect(user1.username).to eq("Ifu")
      expect(user1.id).to be_a(Fixnum)
    end

    it "can update a user's username" do
      user1 = @db.create_user("Ifu", "password")
      user1.username = "Someone Else"
      expect(user1.username).to eq("Someone Else")
    end



  end



end

