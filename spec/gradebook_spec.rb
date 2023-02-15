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

  

end