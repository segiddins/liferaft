# Liferaft

Liferaft parses Apple build numbers, like `6D1002`.

## Usage

```ruby
v = Version.new('6D1002')

puts '#{v.major}.#{v.minor}.#{v.patch} Build #{v.build}'
## => '6.3.1 Build 2'
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'liferaft'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install liferaft

## Contributing

1. Fork it ( https://github.com/[my-github-username]/liferaft/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
