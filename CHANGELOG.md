# Change log

## master (unreleased)

### Changes

* Use GitHub Actions instead of TravisCI
* Require ruby >= 2.5, since 2.4 EOLed
* Freeze dev dependencies in `Gemfile.lock`

## v0.2.0 (2020-05-07)

### New Features

* Actualize `.gitignore`
* Actualize travis CI config
* Support of `markdownlint`
* `rake` task for release gem on github and rubygems
* Add support of `rubocop-performance` and `rubocop-rspec`

### Fixes

* Correctly add `parser` dependency
* Correctly show coverage on local pc

### Changes

* Drop support of ruby older than 2.4
* Cleanup `gemspec` file
