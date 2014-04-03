describe "User" do
  before do
    @new_user = RPS::User.new("Ozzy", "password")
  end

  it "can initialize with an id" do
    expect(@new_user.username).to eq("Ozzy")
    expect(@new_user.id).to be_a(Fixnum)
  end


end
