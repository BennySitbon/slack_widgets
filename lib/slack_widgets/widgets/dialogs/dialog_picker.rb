module SlackWidgets
  class Dialog::DialogPicker
    def initialize(name:, options:, label:, selected_value: nil, placeholder: nil, optional: false)
      @name = name
      @options = options
      @label = label
      @selected_value = selected_value
      @placeholder = placeholder
      @optional = optional
    end

    def render
      picker = StaticPicker.create(name: @name, options: @options, value: @selected_value)
      picker.merge(label: @label, placeholder: @placeholder, optional: @optional)
    end

    def self.create(name:, options:, label:, selected_value: nil, placeholder: nil, optional: false)
      new(name: name,
          options: options,
          label: label,
          selected_value: selected_value,
          placeholder: placeholder,
          optional: optional).render
    end
  end
end