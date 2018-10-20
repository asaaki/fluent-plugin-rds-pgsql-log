lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-rds-pgsql-log"
  spec.version       = "0.3.2"
  spec.authors       = ["shinsaka"]
  spec.email         = ["shinx1265@gmail.com"]
  spec.summary       = "Amazon RDS for PostgreSQL log input plugin"
  spec.description   = "fluentd plugin for Amazon RDS for PostgreSQL log input"
  spec.homepage      = "https://github.com/shinsaka/fluent-plugin-rds-pgsql-log"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd", ">= 0.14.0", "< 2"
  spec.add_dependency "aws-sdk-rds", "~> 1.33"
  spec.add_dependency "aws-sdk-ec2", "~> 1.51"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 12"
  spec.add_development_dependency "test-unit", "~> 3.2"
  spec.add_development_dependency "webmock", "~>3"
  spec.add_development_dependency "simplecov", "~>0"
end
