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

  context 'when number functions are called' do
    (0..9).each do |i|
      it { expect(subject.send(:"#{i.humanize}")).to eq(i) }
    end
  end

  context '#plus' do
    (0..9).each do |i|
      it { expect(subject.plus(i)).to eq("+#{i}") }
    end
  end

  context '#minus' do
    (0..9).each do |i|
      it { expect(subject.minus(i)).to eq("-#{i}") }
    end
  end

  context '#times' do
    (0..9).each do |i|
      it { expect(subject.times(i)).to eq("*#{i}") }
    end
  end

  context '#divided_by' do
    (0..9).each do |i|
      it { expect(subject.divided_by(i)).to eq("/#{i}") }
    end
  end

  # Tests all functions from zero - nine to perform additions
  (0..9).each do |i|
    context "##{i.humanize}" do
      (0..9).each do |j|
        param = "+#{j}"
        it { expect(subject.send(:"#{i.humanize}", param)).to eq(i + j) }
      end
    end
  end

  # Tests all functions from zero - nine to perform subtraction
  (0..9).each do |i|
    context "##{i.humanize}" do
      (0..9).each do |j|
        param = "-#{j}"
        it { expect(subject.send(:"#{i.humanize}", param)).to eq(i - j) }
      end
    end
  end

  # Tests all functions from zero - nine to perform multiplication
  (0..9).each do |i|
    context "##{i.humanize}" do
      (0..9).each do |j|
        param = "*#{j}"
        it { expect(subject.send(:"#{i.humanize}", param)).to eq(i * j) }
      end
    end
  end

  # Tests all functions from zero - nine to perform division
  (0..9).each do |i|
    context "##{i.humanize}" do
      (1..9).each do |j|
        param = "/#{j}"
        it { expect(subject.send(:"#{i.humanize}", param)).to eq(i / j) }
      end
    end
  end
end
