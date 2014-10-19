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
                description: Faker::Company.catch_phrase,
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
                c: one_in_eight_chance,
                other: (one_in_eight_chance ? Faker::Lorem.sentence : nil))
end

100.times do
  Cause.find(rand_cause_id).coders.create(name: Faker::Name.name,
                                          email: Faker::Internet.email,
                                          password: "password",
                                          about: Faker::Lorem.sentences.join(" "),
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
                                          c: one_in_eight_chance,
                                          other: (one_in_eight_chance ? Faker::Lorem.sentence : nil))
end

Cause.all.each do |cause|
  (rand(3)+1).times do
    cause.do_gooders.create(name: Faker::Name.name,
                            email: Faker::Internet.email,
                            password: "password",
                            about: Faker::Lorem.sentences.join(" "))
  end
end

CauseUser.all.each do |cause_user|
  if DoGooder.exists?(cause_user.user_id)
    cause_user.confirmed = true
  else
    cause_user.confirmed = true if three_in_four_chance
  end
end
