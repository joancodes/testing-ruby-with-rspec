RSpec.describe Array do
  subject(:sally) do
    %w[Rooney Ronaldo]
  end

  it 'has a length of 2 then 1' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'has a length of 2' do
    expect(sally.length).to eq(2)
  end
end
