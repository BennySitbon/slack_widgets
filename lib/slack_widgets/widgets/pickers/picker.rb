module SlackWidgets
  # todo: should this be abstract?
  class Picker
    def initialize(name:, text: nil)
      @name = name
      @text = text
    end

    def render
      {
        'type': 'select',
        'name': @name,
        'text': @text
      }
    end

    def self.create(name:, text: nil)
      new(name: name, text: text).render
    end
  end
end