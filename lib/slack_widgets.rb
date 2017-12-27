require "slack_widgets/version"
require "slack_widgets/widgets/buttons/button.rb"
require "slack_widgets/widgets/pickers/picker.rb"

module SlackWidgets
  Dir[File.dirname(__FILE__) + "/slack_widgets/**/*.rb"].each do |file|
    require file
  end
end
