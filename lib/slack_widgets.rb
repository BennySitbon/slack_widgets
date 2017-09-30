require "slack_widgets/version"
# require "slack_widgets/widgets/*"
require 'require_all'

require_all 'lib'

module SlackWidgets
  # Your code goes here...
  # Dir[File.dirname(__FILE__) + "/slack_widgets/**/*"].each{ |file| p file; require file }
end
