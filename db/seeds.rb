require 'faker'

def one_in_eight_chance
  Array.new(7, false).push(true).sample
end

def three_in_four_chance
  Array.new(3, true).push(false).sample
end

def rand_cause_id
  rand(50)+1
end

50.times do
  Cause.create!(name: Faker::Company.name,
                                description: Faker::Company.catchphrase,
                                help_needed: Faker::Company.bs,
                                web_design: one_in_eight_chance,
                                web_development: one_in_eight_chance,
                                ios_development: one_in_eight_chance,
                                android_development: one_in_eight_chance,
                                data_analysis: one_in_eight_chance,
                                algorithm_design: one_in_eight_chance,
                                ruby_on_rails: one_in_eight_chance,
                                django: one_in_eight_chance,
                                html_css: one_in_eight_chance,
                                ruby: one_in_eight_chance,
                                python: one_in_eight_chance,
                                javascript: one_in_eight_chance,
                                java: one_in_eight_chance,
                                cpp: one_in_eight_chance,
                                c: one_in_eight_chance)
end
