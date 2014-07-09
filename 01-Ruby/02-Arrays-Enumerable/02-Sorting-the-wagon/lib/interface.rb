require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array
students << name if name != ""
end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list
students = wagon_sort(students)
count = students.length
last_student = students.last
students.delete_at(-1)

puts "Congratulations! Your Wagon has #{count} students:"

print students.join(", ") + " and #{last_student}"

