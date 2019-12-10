require('rspec')
require('scrabble')

describe('#Letters') do
  it('will store array of letters passed to initialize function') do
    letters = Letters.new(['K'])
    expect(letters.letters()).to(eq(['K']))
  end

  it 'will return value of five when letters contains only "K"' do
    letters = Letters.new(['K'])
    expect(letters.scrabble_score()).to(eq(5))
  end

  it 'will return value of five when letters contains "K","Q","A","F"' do
    letters = Letters.new(["K","Q","A","F"])
    expect(letters.scrabble_score()).to(eq(20))
  end

end
