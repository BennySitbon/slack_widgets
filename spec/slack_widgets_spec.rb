require "spec_helper"

describe SlackWidgets do
  it 'has a version number' do
    expect(SlackWidgets::VERSION).not_to be nil
  end

  # it 'does something useful' do
  #   expect(false).to eq(true)
  # end

  context 'when creating widgets' do
    it 'can create a button' do
      button = SlackWidgets::Button.create(name: 'test')
      expect(button).to include(name: 'test')
    end
  end
end
