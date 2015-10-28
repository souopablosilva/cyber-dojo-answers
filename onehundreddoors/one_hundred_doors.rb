class OneHundredDoors
  def initialize
    @doors = []
  end

  def visit_doors
    visit = 1
    @doors.each do
      @doors.map!.with_index do |door, index|
        if (index + 1) % visit == 0
          toggle(door)
        else
          door
        end
      end
      visit += 1
    end
    require 'pry'; binding.pry
  end

  def generate_closed_doors
    100.times do
      @doors.push(0)
    end
  end

  private

  def toggle(door)
    if door == 0 then 1 else 0 end
  end
end
