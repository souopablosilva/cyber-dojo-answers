class OneHundredDoors
  def initialize
    @doors = []
  end

  def visit_doors
    @doors.each do |door|
      door = 1
    end
  end

  def generate_closed_doors
    100.times do
      @doors.push(0)
    end
  end
end
