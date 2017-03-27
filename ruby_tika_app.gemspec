# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'sw_ruby_tika_app'
  s.version     = '1.14.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Chris Parker', 'Ilya Bazylchuk']
  s.email       = %w(ilya.bazylchuk@startdatelabs.com)
  s.homepage    = 'https://github.com/startdatelabs/ruby_tika_app'
  s.summary     = %q{Wrapper around the tika-app jar}
  s.description = %q{Wrapper around the tika-app jar}

  s.files         = `git ls-files`.split("\n") +
    %w(LICENSE README.md HISTORY)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)
  s.test_files    = Dir.glob('spec/**/*')

  s.add_runtime_dependency('open4')

  s.add_development_dependency('rake')
  s.add_development_dependency('rspec', '~> 2.13.0')
  s.add_development_dependency('bundler', '>= 1.0.15')
  s.add_development_dependency('simplecov')
  s.add_development_dependency('json')
  s.add_development_dependency('rack')
  s.add_development_dependency('thin')
  s.add_development_dependency('pry')
  s.add_development_dependency('rb-readline')
end
