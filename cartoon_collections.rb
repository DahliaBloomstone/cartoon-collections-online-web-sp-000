#print out dwarf names in order:
dwarves = ["Doc", "Dopey", "Bashful", "Grumpy"]
def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |name, index|
    index += 1
    puts "#{index}. #{name}"
  end
end
#=> 1. Doc 2. Dopey 3. Bashful 4. Grumpy

#capitalize each element, return array
planeteer_calls = ["earth", "wind", "fire", "water", "heart"]
def summon_captain_planet(planeteer_calls)
  planeteer_calls.collect do |call|
    call.capitalize << "!"
  end
end

#are the calls longer than 4 characters?
def long_planeteer_calls(calls)
  calls.any? do |call| #any returns a boolean
    call.length > 4
  end
end

#look through strings to find a type of cheese. return nil if the ingredients do not return a cheese.
def find_the_cheese(array)
  i = 0 #start at first item: cheddar 
  cheese_types = ["cheddar", "gouda", "camembert"]
  while i < cheese_types.length
    return cheese_types[i] if array.include?(cheese_types[i])
    i += 1
  end
end
