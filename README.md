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

## Algoritm

1. recieves a character from CLI
2. finds the character on kotobank
3. scrapes the page for uses of the character
4. searches on Google (Japanaese language settings) an checks the number of hits
5. return link to the searches to ensure that uses (so the number of hits is not due to some music act, song or something)

## Skeleton scraping program
```ruby
require 'google-search'
require 'mechanize'

kanji = "雅"
url="http://kotobank.jp/word/#{kanji}"
mechanize = Mechanize.new

page = mechanize.get(url)
page.links_with( text: /#{kanji}/, href: /daijisen/ ).map { |link|
  tango = link.text
  Google::Search::Web.new(
    query: tango,
    language: :ja
  ).count
}
```
This did not work however as google only accepts 100 searches a day on a free plan.
