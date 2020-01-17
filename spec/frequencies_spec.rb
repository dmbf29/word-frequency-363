require_relative '../frequencies'

describe '#frequencies' do
  it 'should return an empty hash when given empty string' do
    actual = frequencies('')
    expected = {}
    expect(actual).to eq(expected)
  end

  it 'should count frequencies for example sentence' do
    frequency_hash = frequencies('The. lazy dog jumped over the brown fox
') # returns a hash!
    expect(frequency_hash['the']).to eq(2)
    expect(frequency_hash['lazy']).to eq(1)
    expect(frequency_hash['beer']).to eq(nil)
  end
end
