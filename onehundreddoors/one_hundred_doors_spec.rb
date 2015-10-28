require './one_hundred_doors'

describe OneHundredDoors do
  subject { described_class.new }

  describe '#generate_closed_doors' do
    it 'generate one hundred closed doors' do
      subject.generate_closed_doors
      doors = subject.instance_variable_get(:@doors)

      expect(doors.size).to eql(100)
      doors.each do |door|
        expect(door).to eql(0)
      end
    end
  end

  describe '#visit_doors' do
    context 'on the first visit through the doors' do
      it 'open all of them' do
        subject.visit_doors
        doors = subject.instance_variable_get(:@doors)
        doors.each do |door|
          expect(door).to eql(1)
        end
      end
    end
  end
end
