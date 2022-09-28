# author: joseph lander

# Am I gonna get in to Uni?!
#
# Will these students raise their grades to get into University?
#
# You'll be given an array of the students current scores from 1st year exams in 100 marks per paper
# The array will only contain integers from 0 to 100
# but the amount of exams they have already taken isn't fixed
# There are 6 exams to take in total but they won't have taken them all
#
# what total score will you need from your remaining exams next year to make the NEXT grade up?
# (unless they have an A of course! - keep it the same then)
# grade boundaries < 40 U, < 50 E, < 60 D, < 70 C, < 80 B, <= 100 A

# scores is a array of numbers
GRADE_BOUNDARIES = [[40, 'E'], [50, 'D'], [60, 'C'], [70, 'B'], [80, 'A']].freeze
def scores_needed(scores)
  current_total = scores.sum
  exams_taken = scores.length
  # find the current grade
  grade_index = 0
  # the boundary for the amount of exams they have taken so far
  boundary_as_number = GRADE_BOUNDARIES[grade_index][0] * exams_taken
  # check next grade boundary up until
  grade_index += 1 while current_total < boundary_as_number
  # target grade is next grade up (or the same for As)
  target_grade_as_number = GRADE_BOUNDARIES[grade_index + 1][0] || GRADE_BOUNDARIES[grade_index][0]
  p "current_total: #{current_total}, grade_index: #{grade_index}"
  # total remaining points needed
  target_grade_as_number * 6 - current_total
end

p scores_needed([0]) # total: 0, grade: U [lowest]
p scores_needed([100, 100]) # total: 200, grade: A [highest]
p scores_needed([68, 63, 65])
p scores_needed([79, 68, 67, 72])
p scores_needed([50, 50, 50, 50])
p scores_needed([60, 60, 60, 60, 60])
