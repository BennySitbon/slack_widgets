# SlackWidgets
Developing a Slack app in Ruby? This gem will make your life a bit easier.
For Slack message attachments:
JSON button and pickers - lame :\
PORO button and pickers - Yeahy! :)



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slack_widgets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slack_widgets

## Usage

```ruby
SlackWidgets::DangerButton.create(name: 'test', text: 'text', value: 1, confirm_hash: 'POSITIVE??')

# => {:name=>"test", :text=>"text", :type=>"button", :value=>1, :style=>"danger", :confirm=>"POSITIVE??"}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/BennySitbon/slack_widgets.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

