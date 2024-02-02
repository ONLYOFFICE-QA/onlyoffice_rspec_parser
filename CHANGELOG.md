# Change log

## master (unreleased)

## v1.0.0 (2024-02-02)

### New Features

* Add `ruby-3.2` to CI
* Add `ruby-3.3` to CI
* Add `dependabot` check for `GitHub Actions`

### Changes

* Drop `ruby-2.7` support, since it's EOLed

### Fixes

* Fix `gem build` warning about license name
* Fix `gem build` warning about homepage url

## v0.6.0 (2022-09-02)

### Changes

* `SpecParser.check_folder_for_spec_doubles` will return boolean value
  if any double found

### Fixes

* Ignore `rake` autocomplete file

## v0.5.0 (2022-08-10)

### New Features

* Check 100% `branch` coverage in CI
* Add `ruby-3.1` in CI
* Add `yamllint` check in CI

### Fixes

* Fix `markdownlint` failure because of old `nodejs` in CI

### Changes

* Require `mfa` for releasing gem
* Add new test to increase `branch` coverage
* Remove `ruby-2.5` from CI since it's EOLed
* Check `dependabot` at 8:00 Moscow time daily
* Changes from `rubocop-rspec` update to 2.9.0
* Drop `ruby-2.6` support, since it's EOLed

## v0.4.0 (2021-01-28)

### New Features

* Add `ruby-3.0` to CI

## v0.3.0 (2020-12-17)

### New Features

* Add `rubocop` check in CI
* Add `yard` check that 100% code documented
* Add `dependabot` config
* Add `simplecov` check in CI that test coverage is 100%

### Changes

* Use GitHub Actions instead of TravisCI
* Require ruby >= 2.5, since 2.4 EOLed
* Freeze dev dependencies in `Gemfile.lock`
* Fixes from `rubocop` update to 1.6.1
* Add missing documentation
* Move repo to `ONLYOFFICE-QA` org
* Remove `codecov` support

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
