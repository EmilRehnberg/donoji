# Donoji

Gem to help out finding uses for kanji in the Japanese language

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'donoji'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install donoji

## Usage

    $ donoji 雅   # CLI

Ruby code:
```ruby
ji = Donoji.new("雅") # => #<Donoji:0x007f8419..>
ji.top_hit            # => "みやび「雅」"
ji.top_three          # => "壱：みやび「雅」\n弐：ゆうが「優雅」\n参：てんが「典雅」"
ji.onyomi             # => "が"
ji.kunyomi            # => "みやび"
ji.reibun             # => "「優雅な立ち居振る舞い」"
ji.tansaku            # => "google.com/"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/donoji/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Outline

1. recieves a character from CLI
2. place all matches in the common list into an enumarator object, store word with frequency
3. add missing words from the dictionary to the enumarator object
4. add meta data to the words
5. output the first hit and let the user prompt for the second, then third etc.

