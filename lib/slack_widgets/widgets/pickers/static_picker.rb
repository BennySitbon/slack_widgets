module SlackWidgets
  class StaticPicker < Picker
    def initialize(name:, options:, text: nil, selected_index: nil, value: nil)
      @options = options
      @value = value
      @pre_selection = selected_index ? options[selected_index] : nil
      super(name: name, text: text)
    end

    def render
      super.merge('data_source': 'static',
                  'options': @options,
                  'selected_options': [@pre_selection],
                  'value': @value)
    end

    def self.create(name:, options:, text: nil, selected_index: nil, value: nil)
      new(name: name, options: options, text: text, selected_index: selected_index, value: value).render
    end
  end
end