require 'faker'

def one_in_eight_chance
  Array.new(7, false).push(true).sample
end
