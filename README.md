# ForexNews

ForexNews is a very simple CLI gem to scrape and organize scheduled news events in the Foreign Exchange market. The gem will download the headlines of the day and will allow you to sort the events by currency pair.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'forex_news'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install forex_news

## Usage

Up initialization the gem will list the currencies that have news events scheduled for the day.

Enter the currency you would like to see news events for, or enter show all to see all events scheduled for the day.

When you are done looking at news events just enter exit to exit.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/forex_news.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
