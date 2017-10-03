# SlackWidgets
Developing a Slack app in Ruby? This gem will make your life a bit easier.  
SlackWidgets will remove the need to write JSON to create Slack buttons and other widgets.
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
SlackWidgets::PrimaryButton.create(name: 'continue_button', text: 'Continue', value: 'continue')

# => {:name=>"continue_button",
#     :text=>"Continue",
#     :type=>"button",
#     :style=>"primary",
#     :value=>"continue"}
# This is exactly the format Slack expects in order to create
# a nice green (approval) button with the text "Continue" on it
```
Primary and Danger button examples:
![Primary button example](https://user-images.githubusercontent.com/2252680/29849715-015b42e2-8d6c-11e7-93a9-fa71e83a6345.png)
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/BennySitbon/slack_widgets.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

