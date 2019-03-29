require 'calculator'
require 'humanize'

RSpec.describe Calculator do
  subject { Calculator.new }

  context 'when function zero is called' do
    it { expect(subject).to respond_to(:zero) }
  end

  context 'when function on numbers are called' do
    (1..9).each do |i|
      it { expect(subject).to respond_to(:"#{i.humanize}") }
    end
  end

  context 'when function on plus is called' do
    it { expect(subject).to respond_to(:plus) }
  end
end
