module SlackWidgets
  class DangerButton < Button
    def initialize(name:, text: nil, confirm_hash: nil, value: nil)
      @confirm_hash = confirm_hash
      super(name: name, text: text, value: value)
    end

    def render
      super.merge('style': 'danger', 'confirm': @confirm_hash)
    end

    def self.create(name:, text: nil, confirm_hash: nil, value: nil)
      new(name: name, text: text, confirm_hash: confirm_hash, value: value).render
    end
  end
end