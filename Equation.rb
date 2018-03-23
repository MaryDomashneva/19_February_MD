def sec_deg_solver(a, b, c)
  a,b,c = [a,b,c].map(&:to_f)
  return "The equation is indeterminate" if [a,b,c] == [0,0,0]
  return "Impossible situation. Wrong entries" if [a,b] == [0,0]
  if a == 0
    x = (-c / b).round(10)
    return "It is a first degree equation. Solution: #{x}"
  end
  delta = b**2 - 4*a*c
  if delta < 0
    "There are no real solutions"
  elsif delta == 0
    x1 = (-b / (2*a)).round(10)
    "It has one double solution: #{x1}"
  else
    x1 = ((-b - Math.sqrt(delta)) / (2*a)).round(10)
    x2 = ((-b + Math.sqrt(delta)) / (2*a)).round(10)
    x1, x2 = [x1,x2].sort
    "Two solutions: #{x1}, #{x2}"
  end
end
