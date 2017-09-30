module SlackWidgets
  class UserPicker < Picker
    def initialize(name:, text: nil, selected_options: nil)
      super(name: name, text: text)
      @selected = selected_options
    end

    def render
      super.merge('data_source': 'users', 'selected_options': @selected)
    end
  end
end