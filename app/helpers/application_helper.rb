module ApplicationHelper
  def star_numbers(average)
    quo, mod = (average / 0.5).floor.divmod(2)
    return quo, mod
  end
end
