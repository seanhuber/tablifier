Gem::Specification.new do |s|
  s.name       = 'tablifier'
  s.version    = '0.0.1'
  s.authors    = ['Sean Huber']
  s.email      = 'seanhuber@seanhuber.com'
  s.homepage   = 'https://github.com/seanhuber/tablifier'
  s.summary    = 'Converts a hash or ActiveRecord object into an html string (table).'
  s.license    = 'MIT'
  s.files      = ['lib/tablifier.rb'] + Dir['lib/*'] + Dir['app/assets/*']

  s.add_dependency 'actionview', '~> 4.1'
  s.add_dependency 'railties', '~> 4.1'
end
