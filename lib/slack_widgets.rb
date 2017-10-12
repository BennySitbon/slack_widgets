require "slack_widgets/version"
require "slack_widgets/widgets/pickers/picker.rb"

module SlackWidgets
  Dir[File.dirname(__FILE__) + "/slack_widgets/**/*.rb"].each{ |file| p file; require file }
end
