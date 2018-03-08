Gem::Specification.new do |s|
  s.name       = 'tablifier'
  s.version    = '1.1.1'
  s.authors    = ['Sean Huber']
  s.email      = 'seanhuber@seanhuber.com'
  s.homepage   = 'https://github.com/seanhuber/tablifier'
  s.summary    = 'Converts a hash or ActiveRecord object into an html string (table).'
  s.license    = 'MIT'
  s.files      = ['lib/tablifier.rb'] + Dir['lib/**/*'] + Dir['app/assets/**/*']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'actionview', '>= 4.1'
  s.add_dependency 'railties', '>= 4.1'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rails', '~> 4.1'
  s.add_development_dependency 'sqlite3', '~> 1.3'
  s.add_development_dependency 'coveralls', '~> 0.8'
end
