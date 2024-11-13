# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog][cl], and this project adheres to [Semantic Versioning][v].

[cl]: https://keepachangelog.com/en/1.0.0/
[v]: https://semver.org/spec/v2.0.0.html

## [Unreleased]

## 0.3.1

This is a maintenance release.

* Lint source codes.
* Add RBS file.

## [0.3.0]

### Added

* method aliases: `hiragana?`, `hira?`, `japanese?`, `katakana?`, `kanji?`, `roman?`, `to_katakana?`, and `to_hiragana`.

### Others

* Add GNU Guix support.

## [0.2.1]

### Fixed

* `Miyabi::FormatString#to_roman`
  * to properly handle two chars conversions.
  * add 'ー' to '-' conversion.

## [0.2.0]

Trivial changes:

* Use net/http and Nokogiri instead of Mechanize.

### Added

* modules to provide instance methods for `String`: `Miyabi::CheckString` and `Miyabi::FormatString`

## [0.1.2]

Trivial changes:

* Added this changelog file.
* Lint Ruby sources with RuboCop.

### Fixed

* `String#to_kanhira` method according to the referring web page.
* Update dependencies.
  Remove default/bundled gems and update the version of the required gems.
