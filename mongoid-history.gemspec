# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mongoid-history"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Qian", "Justin Grimes"]
  s.date = "2012-08-21"
  s.description = "In frustration of Mongoid::Versioning, I created this plugin for tracking historical changes for any document, including embedded ones. It achieves this by storing all history tracks in a single collection that you define. (See Usage for more details) Embedded documents are referenced by storing an association path, which is an array of document_name and document_id fields starting from the top most parent document and down to the embedded document that should track history.\n\n  This plugin implements multi-user undo, which allows users to undo any history change in any order. Undoing a document also creates a new history track. This is great for auditing and preventing vandalism, but it is probably not suitable for use cases such as a wiki."
  s.email = ["aq1018@gmail.com", "justin.mgrimes@gmail.com"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".travis.yml",
    "CHANGELOG.md",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "config/mongoid.yml",
    "lib/mongoid-history.rb",
    "lib/mongoid/history.rb",
    "lib/mongoid/history/sweeper.rb",
    "lib/mongoid/history/trackable.rb",
    "lib/mongoid/history/tracker.rb",
    "mongoid-history.gemspec",
    "spec/integration/integration_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/database_cleaner.rb",
    "spec/support/mongoid.rb",
    "spec/trackable_spec.rb",
    "spec/tracker_spec.rb"
  ]
  s.homepage = "http://github.com/aq1018/mongoid-history"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "history tracking, auditing, undo, redo for mongoid"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<easy_diff>, [">= 0"])
      s.add_runtime_dependency(%q<mongoid>, [">= 3.0.4"])
    else
      s.add_dependency(%q<easy_diff>, [">= 0"])
      s.add_dependency(%q<mongoid>, [">= 3.0.4"])
    end
  else
    s.add_dependency(%q<easy_diff>, [">= 0"])
    s.add_dependency(%q<mongoid>, [">= 3.0.4"])
  end

  s.add_development_dependency('rspec', ["~> 2.12.0"])
  s.add_development_dependency('yard')
  s.add_development_dependency('bundler', ['>= 1.0.0'])
  s.add_development_dependency('jeweler')
  s.add_development_dependency('database_cleaner', [">= 0.8.0"])
  s.add_development_dependency('activesupport', '~> 3.2.11')
end

