class Gradebook
  attr_reader :instructor,
              :courses 

  def initialize(gradebook_data)
    @instructor = gradebook_data[:instructor]
    @courses = gradebook_data[:courses]
  end

  def add_course(course)
    @courses << course
  end
end
