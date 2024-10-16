require 'rspec'
require './lib/student'

describe 'Student' do
	describe '#initialize' do
		it 'is an instance of Student and has a name, mod, and skills' do
			student = Student.new("Jesse", 1)
			expect(student).to be_a(Student)
            expect(student.name).to eq("Jesse")
            expect(student.mod).to eq(1)
            expect(student.skills).to eq([])
		end
	end

#     describe '#say_mod' do
#         it 'can say which mod its currently in' do
#             student = Student.new("Jesse", 1)
#             expect(student.say_mod).to eq("I'm in Mod 1")
#         end
#     end
end