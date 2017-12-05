# Miyabi

Welcome to Miyabi!
Miyabi is Romaji-Kana transliterator.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'miyabi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install miyabi

## Usage

```ruby
require 'miyabi'
# hiragana to katakana
"かたかな".to_kana #=> "カタカナ"
# katakana to hiragana
"ヒラガナ".to_hira #=> "ひらがな"
# katakana(hiragana) to romaji
"ローマ".to_roman #=> "roma"
# kanji to hiragana
"今日は良い天気ですね".to_kanhira #=> "きょうはいいてんきですね

"ひらがな".is_hira? #=> true

"カタカナ".is_kana? #=> true

"日本語".is_kanji? #=> true

"romaji".is_roman? #=> true

"これは日本語です".is_japanese? #=> true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/h-akaishi/miyabi. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Miyabi project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/h-akaishi/miyabi/blob/master/CODE_OF_CONDUCT.md).
