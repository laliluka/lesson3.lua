
local students = {
  {name = "Alice", age = 12, grade = "A"},
  {name = "Bob", age = 14, grade = "B"},
  {name = "Charlie", age = 16, grade = "A+"}
}


function printStudentInfo(student)
  print("Name: " .. student.name)
  print("Age: " .. student.age)
  print("Grade: " .. student.grade)
  print("--------------------")
end


function findStudentsByGrade(grade)
  local foundStudents = {}

  for _, student in ipairs(students) do
    if student.grade == grade then
      table.insert(foundStudents, student)
    end
  end

  return foundStudents
end


for _, student in ipairs(students) do
  printStudentInfo(student)
end

print("--------------------")


local gradeAStudents = findStudentsByGrade("A")

for _, student in ipairs(gradeAStudents) do
  printStudentInfo(student)
end