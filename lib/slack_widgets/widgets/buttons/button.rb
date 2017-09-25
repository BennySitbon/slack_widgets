module SlackWidgets
  class Button
    def initialize(name:, text: nil, value: nil)
      @name = name
      @text = text
      @value = value
    end

    def render
      {
        'name': @name,
        'text': @text,
        'type': 'button',
        'value': @value
      }
    end

    def self.create(name:, text: nil, value: nil)
      new(name: name, text: text, value: value).render
    end
  end
end
