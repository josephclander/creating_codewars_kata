require 'will_i_pass_solution'

describe 'Basic Tests' do
  it 'should pass fixed tests' do
    expect(will_i_pass([0, 0, 0], 'D')).to eq(true)
  end
end
