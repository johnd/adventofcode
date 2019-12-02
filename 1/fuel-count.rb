#!/usr/bin/env ruby

FILENAME="input"
fuel = 0

File.open(FILENAME, "r").each_line do |line|
  module_mass = line.to_i
  module_fuel = (module_mass / 3) - 2
  fuel += module_fuel
end

puts "Total fuel usage: #{fuel}"
