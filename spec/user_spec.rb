describe "User" do

  before do
    @new_user = RPS::User.new("Ozzy")
  end

  it "can initialize with an id" do
    expect(@new_user.username).to eq("Ozzy")
    expect(@new_user.uid).to be_a(Fixnum)
  end

end
