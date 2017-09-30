module SlackWidgets
  class PrimaryButton < Button
    def render
      super.merge('style': 'primary')
    end
  end
end