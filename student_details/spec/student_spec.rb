require 'student'

RSpec.describe Student do

  it 'should respond to #first_name' do
  	student = Student.new("Amit", "Pandya")
  	expect(student).to respond_to(:first_name)
  end
  
  it 'should respond to #last_name' do
  	student = Student.new("Vasistha", "Pandya")
  	expect(student).to respond_to(:last_name)
  end

  it 'should respond to #student_fullname' do
  	student = Student.new("Darshan", "Pandya")
  	expect(student).to respond_to(:student_fullname)
  end

end