require 'yaml'

RSpec.describe 'Anatomy Facts' do
  subject(:facts) { YAML.load_file('./anatomy_nerd.yml')['anatomy_facts'] }

  it 'all have text' do
    facts.each do |fact|
      expect(fact['text']).not_to be_empty
    end
  end

  it 'all have "YYYY-MM-DD" dates' do
    facts.each do |fact|
      expect(fact['date'].to_s).to match(/^\d{4}-\d{2}-\d{2}$/)
    end
  end
end
