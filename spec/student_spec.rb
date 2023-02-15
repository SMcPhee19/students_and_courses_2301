require './lib/student'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  it 'exists' do
    expect(@student).to be_a(Student)
  end

  it 'the student has data' do
    expect(@student.name).to eq("Morgan")
    expect(@student.age).to eq(21)
  end

  it 'the student starts with an empty scores array' do
    expect(@student.scores).to eq([])
  end

  it 'the student can store scores in the array' do
    @student.log_score(89)
    @student.log_score(78)

    expect(@student.scores).to eq([89, 78])
  end

  it 'students grade array can be averaged' do
    @student.log_score(89)
    @student.log_score(78)
    # require 'pry'; binding.pry

    expect(@student.grade).to eq(83.5)
  end








end