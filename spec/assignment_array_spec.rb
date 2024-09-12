RSpec.describe Array do
  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject = %w[a b]
    subject.push('c')
    expect(subject.length).to eq(3)
  end
end
