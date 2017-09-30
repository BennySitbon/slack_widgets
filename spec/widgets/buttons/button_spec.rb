require "spec_helper"

describe SlackWidgets::Button do
  describe '.create' do
    context 'when creating a button' do
      let(:attributes) do
        {
          name: 'test',
          text: 'test text',
          value: 1
        }
      end

      let(:button) { SlackWidgets::Button.create(attributes) }

      it 'creates a hash with the correct attributes' do
        expect(button).to be_a(Hash)
        expect(button).to include(attributes)
      end
    end
  end
end