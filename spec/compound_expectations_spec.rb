RSpec.describe 25 do
  it 'can test for multiple matchers' do
    # expect(subject).to be_odd
    # expect(subject).to be > 20

    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd.and be > 20 }
end

RSpec.describe 'caterpillar' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('cat').and end_with('pillar')
  end

  it { is_expected.to start_with('cat').and end_with('pillar') }
end

RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
  end
end

# Assignment compound expectations

RSpec.describe 'firetruck' do
  it 'should start with fire and end with truck' do
    expect(subject).to start_with('fire').and end_with('truck')
  end

  it { is_expected.to start_with('fire').and end_with('truck') }
end

RSpec.describe 20 do
  it 'should be even and respond to the times method' do
    expect(subject).to be_even.and respond_to(:times)
  end

  it { is_expected.to be_even.and respond_to(:times) }
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'should include 42 and start with the values 4, 8, 15' do
    expect(subject).to include(42).and start_with(4, 8, 15)
  end

  it { is_expected.to include(42).and start_with(4, 8, 15) }
end
