require 'spec_helper'

describe "Database" do
  before do
    @db = RPS::Database.new
  end

  desribe "User" do

    it "can create a user and assign an id" do
      user1 = @db.user.new("Ifu")
      expect(user1.username).to eq("Ifu")
      expect(user1.uid).to be_a(Fixnum)
    end

    it "can update a users username" do
      user1 = @db.user.new("Ifu")
      user1.name = "Someone Else"
      expect(user1.name).to eq("Someone Else")
    end

  end

  describe "Rounds" do
    before do
      @newRound = @db.round.new(10, {p1_move: "rock", p2_move: "paper"})
    end

    it "can be initialized with an id" do
      expect(@newRound.rid).to be_a(Fixnum)
      expect(@newRound.match_id).to eq(10)
    end

    it "knows when one player has moved" do
      testRound = @db.round.new(5, {p1_move: "rock"})
      expect(@testRound.move_hash[p1_move]).to eq("rock")
    end

    it "can return winner of round" do
      newerRound = @db.round.new(7, {p1_move: "rock", p2_move: "paper"})
      expect(@newerRound.winner).to eq("Player 2")
    end

    it "knows the match with which it is associated" do

    end

end

