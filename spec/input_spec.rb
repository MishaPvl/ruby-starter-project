require_relative '../lib/input'

RSpec.describe Input do
  describe 'Scale input' do
    let(:test) { Input.new }
    context 'Check in degree' do
      it { expect(test.check_in_degree_type('F')).to eq(true) }
      it { expect(test.check_in_degree_type('C')).to eq(true) }
      it { expect(test.check_in_degree_type('K')).to eq(true) }
      it { expect(test.check_in_degree_type('D')).to eq(false) }
      it { expect(test.check_in_degree_type(123)).to eq(false) }
    end
    context 'Check out degree' do
      it { expect(test.check_out_degree_type('F')).to eq(true) }
      it { expect(test.check_out_degree_type('C')).to eq(true) }
      it { expect(test.check_out_degree_type('K')).to eq(true) }
      it { expect(test.check_out_degree_type('Z')).to eq(false) }
      it { expect(test.check_out_degree_type(256)).to eq(false) }
    end
    describe 'Temperature input' do
      let(:input) { Input.new }
      it { expect(test.check_temperature('Privet')).to eq(false) }
      it { expect(test.check_temperature('23')).to eq(true) }
    end
  end
end
