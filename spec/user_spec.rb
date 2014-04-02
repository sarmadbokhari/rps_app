desribe "User" do

  before do
    @db = RPS::Database.new
  end

  it "can initialize with an id" do
    user1 = @db.user.new("Ifu")
    expect(user1.username).to eq("Ifu")
    expect(user1.uid).to be_a(Fixnum)
  end

end
