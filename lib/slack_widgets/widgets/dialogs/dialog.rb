module SlackWidgets
  class Dialog
    def initialize(callback_id:, title:, submit_button_label:, elements:)
      raise ArgumentError, 'elements must be an array of dialog widgets' unless elements.is_a?(Array)
      @callback_id = callback_id
      @title = title
      @submit_button_label = submit_button_label
      @elements = elements
    end

    def render
      {
        'callback_id': @callback_id,
        'title': @title,
        'submit_label': @submit_button_label,
        'elements': @elements
      }
    end

    def self.create(callback_id:, title:, submit_button_label:, elements:)
      new(callback_id: callback_id,
          title: title,
          submit_button_label: submit_button_label,
          elements: elements).render
    end
  end
end