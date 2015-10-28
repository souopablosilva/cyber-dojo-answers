require './one_hundred_doors'

describe OneHundredDoors do
  subject { described_class.new }

  before do
    subject.generate_closed_doors
  end

  describe '#generate_closed_doors' do
    it 'generate one hundred closed doors' do
      doors = subject.instance_variable_get(:@doors)

      expect(doors.size).to eql(100)
      doors.each do |door|
        expect(door).to eql(0)
      end
    end
  end

  describe '#visit_doors' do
    context 'on nth visit' do
      let(:first_doors) { [1,0,0,1] }
      it 'toggle all multiples of nth visit doors' do
        subject.visit_doors
        doors = subject.instance_variable_get(:@doors)
        expect(doors.slice(0,4)).to eql(first_doors)
      end
    end
  end
end
