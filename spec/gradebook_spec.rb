require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new({instructor: "Nyki", courses: []})
  end

  it 'the gradebook exists' do
    expect(@gradebook).to be_a(Gradebook)
  end

  it 'the gradebook has a listed instructor' do
    expect(@gradebook.instructor).to eq("Nyki")
  end

  it 'the gradebook can store courses' do
    expect(@gradebook.courses).to eq([])
  end
  
  it 'the gradebook can have courses added' do
    course1 = Course.new("Calculus", 2)
    course2 = Course.new("Anatomy and Physiology", 2)

    @gradebook.add_course(course1)
    @gradebook.add_course(course2)

    expect(@gradebook.courses).to eq([course1, course2])
  end

  it 'the gradebook can list all students' do
    course1 = Course.new("Calculus", 2)

    @gradebook.add_course(course1)

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29}) 
    

    course1.enroll(student1)
    course1.enroll(student2)

    expect(@gradebook.list_all_students).to eq({:courses => [student1, student2]})
  end

  

end