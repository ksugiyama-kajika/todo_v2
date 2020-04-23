# coding: utf-8
# ロードパスにlibディレクトリへのパスを追加している
# この記述でBundlerを使って実行した場合はlibディレクトリが
# ロードパスに読み込まれ、require 'todo'がlib/todo.rbを参照する
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todo_v2/version'

Gem::Specification.new do |spec|
  spec.name          = "todo_v2"
  spec.version       = TodoV2::VERSION
  spec.authors       = ["ksugiyama"]
  spec.email         = ["sugiyama.30n@gmail.com"]
  spec.description   = %q{v2 todo application}
  spec.summary       = %q{making todo v2}
  spec.homepage      = "https://github.com/ksugiyama-kajika/todo_v2.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~> 3.2.0"
  spec.add_dependency "sqlite3",      "~> 1.3.0"
  spec.add_development_dependency "bundler",   "~> 1.3"
  spec.add_development_dependency "rake",      "~> 13.0"
  spec.add_development_dependency "yard" ,     "~> 0.8"
  spec.add_development_dependency "redcarpet", "~> 2.2"
end
