require 'yaml'

RSpec.describe 'Monthly Themes' do
  subject(:themes) { YAML.load_file('./anatomy_nerd.yml')['monthly_themes'] }

  it 'all have text' do
    themes.each do |theme|
      expect(theme['text']).not_to be_empty
    end
  end

  it 'all have "YYYY-MM" months' do
    themes.each do |theme|
      expect(theme['month'].to_s).to match(/^\d{4}-\d{2}$/)
    end
  end
end
