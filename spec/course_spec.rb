require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
  end

  it 'the course exists' do
    expect(@course).to be_a(Course)
  end

  it 'the course has a name' do
    expect(@course.name).to eq("Calculus")
  end

  it 'the course has a capacity' do
    expect(@course.capacity).to eq(2)
  end

  it 'courses default with an empty student array' do
    expect(@course.students).to eq([])
  end

  it 'the course starts at not max capacity' do
    expect(@course.full?).to eq false
  end

  it 'students can enroll in classes' do 
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29}) 

    @course.enroll(student1)
    @course.enroll(student2)

    expect(@course.students).to eq([student1, student2])
  end

  it 'the course can reach capacity' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29}) 

    @course.enroll(student1)
    @course.enroll(student2)

    expect(@course.full?).to eq true
  end

end