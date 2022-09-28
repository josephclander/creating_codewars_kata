# scores is an array of integers
# target_grade is "A", "B", "C", "D" or "E"
def will_i_pass(scores, target_grade)
  boundaries = { A: 80, B: 70, C: 60, D: 50, E: 40 }
  current_total = scores.sum
  # avoid division by using totals
  total_to_get_grade = 6 * boundaries[target_grade.to_sym]
  # total score they must get from final exams
  points_needed = total_to_get_grade - current_total
  exams_taken = scores.length
  exams_left = 6 - exams_taken
  # 100 is max you can get on one test
  max_possible_total = 100 * exams_left
  points_needed <= max_possible_total
end
