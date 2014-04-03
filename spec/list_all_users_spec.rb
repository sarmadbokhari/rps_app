require 'spec_helper'

describe RPS::ListAllUsers do
  it "lists all users" do
    RPS.db.create_user("Isaac", "apples")
    result = subject.run({})
    expect(result.success?).to eq true
    expect(result.length).to be_a(Fixnum)
  end
end
