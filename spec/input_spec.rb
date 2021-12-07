require_relative '../lib/input'

RSpec.describe Input do
  describe '#check_in_degree_type' do
    let(:test) { Input.new }
    context 'when input correct scale' do
      it { expect(test.check_in_degree_type('F')).to eq(true) }
      it { expect(test.check_in_degree_type('C')).to eq(true) }
      it { expect(test.check_in_degree_type('K')).to eq(true) }
    end
    context 'when input incorrect scale' do
      it { expect(test.check_in_degree_type('D')).to eq(false) }
      it { expect(test.check_in_degree_type(123)).to eq(false) }
    end
    describe '#check_out_degree_type' do
      context 'when input correct scale' do
        it { expect(test.check_out_degree_type('F')).to eq(true) }
        it { expect(test.check_out_degree_type('C')).to eq(true) }
        it { expect(test.check_out_degree_type('K')).to eq(true) }
        context 'when input incorrect scale' do
          it { expect(test.check_out_degree_type('Z')).to eq(false) }
          it { expect(test.check_out_degree_type(256)).to eq(false) }
        end
      end
    end
    describe '#check_temperature' do
      context 'when input incorrect temperature' do
        it { expect(test.check_temperature('Privet')).to eq(false) }
      end
      context 'when input correct temperature' do
        it { expect(test.check_temperature('23')).to eq(true) }
      end
    end
    describe '#check_input' do
      let(:test_value) { test.check_input('12', 'D', 'F') }
      context 'when incorrect scale' do
        it { expect { test_value }.to raise_error(SystemExit) }
      end
    end
  end
end
