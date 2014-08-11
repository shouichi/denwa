lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'denwa/version'

Gem::Specification.new do |s|
  s.name          = 'denwa'
  s.version       = Denwa::VERSION
  s.summary       = 'Formats Japanese phone numbers.'
  s.description   = s.summary
  s.authors       = ['Shouichi Kamiya']
  s.email         = ['shouichi.kamiya@gmail.com']
  s.homepage      = 'https://shouichi.github.com/denwa/'
  s.license       = 'MIT'
  s.files         = ['lib/denwa.rb']
  s.files         = %w(LICENSE README.md denwa.gemspec)
  s.files         += Dir.glob('lib/**/*.rb')
  s.files         += Dir.glob('spec/**/*')
  s.require_paths = ['lib']
end
