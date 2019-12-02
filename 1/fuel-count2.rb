#!/usr/bin/env ruby

FILENAME="input"
DEBUG=false
fuel = 0

def calc_fuel(mass)
  ((mass / 3) - 2)
end

def debug(text)
  puts text if DEBUG
end

File.open(FILENAME, "r").each_line do |line|
  module_mass = line.to_i
  module_fuel = calc_fuel(module_mass)
  fuel_fuel = 0
  last_fuel = module_fuel
  debug "Module mass: #{module_mass}"
  debug "Module fuel: #{module_fuel}"

  loop do
    last_fuel = calc_fuel(last_fuel)
    break unless last_fuel > 0
    debug "     fuel: #{last_fuel}"
    fuel_fuel += last_fuel
  end
  debug "Fuel fuel: #{fuel_fuel}"
  debug "---------------------"

  fuel += module_fuel
  fuel += fuel_fuel
end

puts "Total fuel usage: #{fuel}"
