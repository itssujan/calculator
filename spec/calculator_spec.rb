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

  context 'when function on minus is called' do
    it { expect(subject).to respond_to(:minus) }
  end

  context 'when function on times is called' do
    it { expect(subject).to respond_to(:times) }
  end

  context 'when function on divided_by is called' do
    it { expect(subject).to respond_to(:divided_by) }
  end

end
