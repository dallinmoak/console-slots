require_relative "shape_printer.rb"

@shape = [
  "circle",
  "square",
  "triangle"
]

@values = [
  "+",
  "*",
  "~"
]

@odds = [
  false,
  true,
  true,
  true
]

def spinner
  spin = {}
  if (@odds[rand(@odds.length)])
    spin = {@shape[rand(@shape.length)] => @values[rand(@values.length)]}
  else
    spin = {"" => ""}
  end
  printer spin
  spin
end
