require 'spec_helper'

describe RPS::AcceptInvite do

  it "can send accept an invite for a user" do
    user1 = RPS.db.create_user(,)
    user2 = RPS.db.create_user(,)
    invite = RPS.db.create_invite(user1, user2)

    result = subject.run({})
    expect(result.success?).to eq true
    expect(result.p1_id).to eq(user1.id)
  end

end
