RSpec.describe 'predicate methods and matchers' do
  describe Hash do
    it { is_expected.to be_empty }
  end

  describe [10, 20, 30] do
    it { is_expected.to all(be_even) }
  end

  describe [0, 1, 2] do
    it { is_expected.to all(be >= 0) }
  end
end

# Truthy values:
# "hello"
# 0
# -10
# []
# 99.99
# :hello
# true
# [1, 2, 3]

# Falsy values:
# nil
# false
