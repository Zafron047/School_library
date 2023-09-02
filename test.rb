require_relative 'person'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
require_relative 'students'
require_relative 'rental'
require_relative 'book'
require_relative 'classroom'
p book = Book.new('Title', 'Author')
p person = Person.new(25, 'John Doe')

# Create a rental and associate it with the book and person
p Rental.new('2020-06-20', book, person)

# Creating a person

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

# Creating unique instances of books
book1 = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
book2 = Book.new('The Lord of the Rings', 'J.R.R. Tolkien')

# Creating unique instances of students
student1 = Student.new(16, 'John Doe', parent_permission: false)
student2 = Student.new(17, 'Jane Smith', parent_permission: false)

# Creating a classroom
classroom = Classroom.new('A101')
classroom.add_student(student1)
classroom.add_student(student2)

# Creating rentals
Rental.new('2020-06-20', book1, student1)
Rental.new('2020-06-20', book2, student2)

# Outputting classroom information
puts "Classroom: #{classroom.label}"
puts 'Students in the classroom:'
classroom.students.each { |student| puts "#{student.name} (ID: #{student.id})" }

# Outputting student information and rentals
puts "\n#{student1.name}:"
puts "Age: #{student1.age}"
puts "Can use services? #{student1.can_use_services?}"
puts "Play hooky: #{student1.play_hooky}"

puts "\n#{student2.name}:"
puts "Age: #{student2.age}"
puts "Can use services? #{student2.can_use_services?}"
puts "Play hooky: #{student2.play_hooky}"

# Outputting book information and rentals
puts "\n#{book1.title} by #{book1.author}"
puts 'Rentals for the book:'
book1.rentals.each { |rental| puts "Rented on #{rental.date} by #{rental.person.name}" }

puts "\n#{book2.title} by #{book2.author}"
puts 'Rentals for the book:'
book2.rentals.each { |rental| puts "Rented on #{rental.date} by #{rental.person.name}" }
