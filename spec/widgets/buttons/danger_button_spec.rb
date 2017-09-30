require "spec_helper"

describe SlackWidgets::DangerButton do
  describe '.create' do
    context 'when creating a danger button' do
      let(:attributes) do
        {
          name: 'test',
          text: 'test text',
          confirm_hash: 'Positive?',
          value: 1
        }
      end

      let(:button) { SlackWidgets::DangerButton.create(attributes) }

      it 'creates a hash with the correct attributes' do
        expect(button).to be_a(Hash)
        confirm = attributes.delete(:confirm_hash)
        expect(button).to include(attributes)
        expect(button).to include(confirm: confirm)
      end
    end
  end
end