require 'spec_helper'

describe 'Round' do
  before do
    @newRound = RPS::Round.new(10, {p1_move: "rock", p2_move: "paper"})
  end

  it "can be initialized with an id" do
    expect(@newRound.id).to be_a(Fixnum)
    expect(@newRound.match_id).to eq(10)
  end

  it "knows when one player has moved" do
    testRound = RPS::Round.new(5, {p1_move: "rock"})
    expect(testRound.move_hash[:p1_move]).to eq("rock")
  end

  it "can return winner of round" do
    newerRound = RPS::Round.new(7, {p1_move: "rock", p2_move: "paper"})
    expect(newerRound.winner).to eq("p2")
  end

  it "knows the match with which it is associated" do
    result = @newRound.match_id
    expect(result).to eq(10)
  end

end
