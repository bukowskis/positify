require File.expand_path('../lib/positify/version', __FILE__)

Gem::Specification.new do |spec|

  spec.authors      = %w{ bukowskis }
  spec.summary      = "Makes anything positive."
  spec.description  = "Makes anything positive. Works inline and block and you can specify a maximum value. Zero is not positive btw."
  spec.homepage     = 'https://github.com/bukowskis/positify'
  spec.license      = 'MIT'

  spec.name         = 'positify'
  spec.version      = Positify::VERSION::STRING

  spec.files        = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
  spec.require_path = 'lib'

  spec.rdoc_options.concat ['--encoding',  'UTF-8']

  spec.add_development_dependency('rspec')
  spec.add_development_dependency('guard-rspec')
  spec.add_development_dependency('rb-fsevent')

end
