require 'yaml'

RSpec.describe 'Stretching Tips' do
  subject(:tips) { YAML.load_file('./anatomy_nerd.yml')['stretching_tips'] }

  it 'all have text' do
    tips.each do |tip|
      expect(tip['text']).not_to be_empty
    end
  end

  it 'is an array of categories (if presented)' do
    tips.each do |tip|
      if tip['categories']
        expect(tip['categories']).to be_an Array
        expect(tip['categories']).not_to be_empty
      end
    end
  end
end
