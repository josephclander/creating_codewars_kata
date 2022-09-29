describe 'Arbitrary values' do
  it 'should return a correct value for floors lower than 13' do
    Test.assert_equals(get_real_floor(1), 0)
    Test.assert_equals(get_real_floor(0), 0)
    Test.assert_equals(get_real_floor(5), 4)
    Test.assert_equals(get_real_floor(10), 9)
    Test.assert_equals(get_real_floor(12), 11)
  end

  it 'should return a correct value for floors greater than 13' do
    Test.assert_equals(get_real_floor(14), 12)
    Test.assert_equals(get_real_floor(15), 13)
    Test.assert_equals(get_real_floor(37), 35)
    Test.assert_equals(get_real_floor(200), 198)
  end

  it 'should return a correct value for basement floors' do
    Test.assert_equals(get_real_floor(-2), -2)
    Test.assert_equals(get_real_floor(-5), -5)
  end

  it 'Random tests' do
    def the_real_one(n)
      return 0 if n == 0
      return -1 + get_real_floor(n + 1) if n < 0
      return 0 if n == 1
      return get_real_floor(n - 1) if n == 13

      1 + get_real_floor(n - 1)
    end

    def getRnd
      v = rand(300)
      v = 14 if v == 13
      v * (rand(1) == 1 ? 1 : -1)
    end

    values = (0...200).to_a.reduce([]) { |acc, _e| acc + [getRnd] }

    values.each do |n|
      Test.assert_equals(get_real_floor(n), the_real_one(n), "Incorrect result for n = #{n}")
    end
  end
end
