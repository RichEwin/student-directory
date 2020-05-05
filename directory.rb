def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do

  puts "Please enter the height of #{name}?"
  height = gets.chomp

  puts "Please enter the hobbies of the #{name}?"
  hobbie = gets.chomp

  puts "Please enter the country of birth of the #{name}?"
  c_o_b = gets.chomp

  # add the student hash to the array
  students << {name: name, cohort: :november, height: height, hobbie: hobbie, c_o_b: c_o_b }
  puts "Now we have #{students.count} students"
  # get another name from the user
  name = gets.chomp
 end
 # return an array of students
 students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, #{student[:height]}, #{student[:hobbie]}, #{student[:c_o_b]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
