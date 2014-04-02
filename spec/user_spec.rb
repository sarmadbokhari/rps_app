describe "User" do

  before do
    @new_user = RPS::User.new("Ozzy")
  end

<<<<<<< HEAD
  it "can initialize with an id" do
    expect(@new_user.username).to eq("Ozzy")
    expect(@new_user.uid).to be_a(Fixnum)
=======
  xit "can initialize with an id" do
    user1 = @db.user.new("Ifu")
    expect(user1.username).to eq("Ifu")
    expect(user1.id).to be_a(Fixnum)
>>>>>>> 505c0d08370d1ae46b806acf40734f2a43386ad6
  end

end
