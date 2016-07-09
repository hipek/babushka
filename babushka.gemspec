Gem::Specification.new do |s|
  s.name          = 'babushka'
  s.version       = '0.1.0'
  s.summary       = "Test-driven sysadmin."
  s.description   = ""
  s.authors       = ["Ben Hoskings"]
  s.email         = 'ben@hoskings.net'
  s.files         = []
  s.homepage      = 'http://babushka.me'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
end
