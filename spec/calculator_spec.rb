require 'calculator'

RSpec.describe Calculator do
  subject { Calculator.new }

  context 'when function zero is called' do
    it { expect(subject).to respond_to(:zero) }
  end
end
