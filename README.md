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
confirm_hash = { title: 'Are you sure?',
                text: "Wouldn't you prefer to think about this a bit more?",
                ok_text: 'Yes',
                dismiss_text: 'No'}
SlackWidgets::DangerButton.create(name: 'floopy_destroyer', text: 'Destroy floopyland', value: 'destroy_all', confirm_hash: confirm_hash)

# => {:name=>"floopy_destroyer",
#     :text=>"Destroy floopyland",
#     :type=>"button",
#     :value=>"destroy_all",
#     :style=>"danger",
#     :confirm=>{:title=>"Are you sure?",
#                :text=>"Wouldn't you prefer to think about this a bit more?",
#                :ok_text=>"Yes",
#               :dismiss_text=>"No"}}
# which is exactly the format Slack expects for the button
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/BennySitbon/slack_widgets.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

