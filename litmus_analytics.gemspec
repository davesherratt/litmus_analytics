Gem::Specification.new do |s|
  s.name        = 'litmus_analytics'
  s.version     = '0.0.1'
  s.date        = '2010-08-13'
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.description = "Wrapper for the Litmus Analytics API"
  s.summary     = "Wrapper for the Litmus Analytics API"
  s.authors     = ["Dave Sherratt"]
  s.email       = 'nectom@gmail.com' 
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

  s.homepage    = 'http://github.com/davesherratt/litmus_analytics'
  s.license     = 'MIT'
end