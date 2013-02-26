# file codebreaker.gemspec
 
# ...
Gem::Specification.new do |gem|
  s.name        = 'codebreaker'
  s.version     = '0.0.0.1'
  s.summary     = "Codebreaker game!"
  s.description = "Codebreaker game!"
  s.authors     = ["ash"]
  s.email       = 'alexej.ashkenazi@gmail.com'
  s.files       = ["lib/"]
  #s.homepage    = 'http://rubygems.org/gems/example'
  gem.add_development_dependency "rspec"
end

