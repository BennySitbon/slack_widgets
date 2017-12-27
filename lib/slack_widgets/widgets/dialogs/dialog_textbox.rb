module SlackWidgets
  class Dialog::DialogTextBox
    def initialize(name:, label:, placeholder: nil, value: nil, optional: false)
      @name = name
      @label = label
      @placeholder = placeholder
      @value = value
      @optional = optional
    end

    def render
    {
      label: @label,
      name: @name,
      type: 'text',
      placeholder: @placeholder,
      value: @value,
      optional: @optional
    }
    end

    def self.create(name:, label:, placeholder: nil, value: nil, optional: false)
      new(name: name, label: label, placeholder: placeholder, value: value, optional: optional).render
    end
  end
end