module SlackWidgets
  class ExternalPicker < Picker
    def render
      super.merge('data_source': 'external')
    end
  end
end