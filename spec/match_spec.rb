require 'spec_helper'

describe 'Match' do
  before do
    @user1 = RPS::User.new("Ifu", "abc")
    @user2 = RPS::User.new("Sarmad", "xyz")
    @match = RPS::Match.new(@user1.id, @user2.id)
  end


  it "can initialize with two users" do
    expect(@match.p1).to eq(@user1.id)
    expect(@match.p2).to eq(@user2.id)
  end

end
