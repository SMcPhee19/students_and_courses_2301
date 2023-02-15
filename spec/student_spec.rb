require './lib/student'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  it "exists" do
    expect(@student).to be_a(Student)
  end






end