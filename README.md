# BirthYearAlbum

This gem will take in a birth year and return the top selling album with artist for that year. 

Information is scraped from wikipedia's list of top selling albums by year.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'birth_year_album'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install birth_year_album

## Usage

After bundle installing the gem, run "./bin/birth-year-album" to start the gem.
In the gem there is a prompt for a year that will return the top album for that year. The year range is from 1956 to the current year. The album is found through wikipedias list of top albums by year.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pickledyamsman/birth_year_album. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

