class Cause < ActiveRecord::Base
  has_many :causeUsers

  has_many :coders, through: :causeUsers
  has_many :do_gooders, through: :causeUsers

  validates :name, length: { minimum: 5 }

  def self.search(query)
    where("name like ?", "%#{query}%")
  end

  SKILLS = {
    :web_design => "Web Design",
    :web_development => "Web Development",
    :ios_development => "iOS Development",
    :android_development => "Android Development",
    :data_analysis => "Data Analysis",
    :algorithm_design => "Algorithm Design",
    :ruby_on_rails => "Ruby on Rails",
    :django => "Django",
    :html_css => "HTML and CSS",
    :ruby => "Ruby",
    :python => "Python",
    :javascript => "JavaScript",
    :java => "Java",
    :cpp => "C++",
    :c => "C",
  }


  def skills
    skill_array = []
    skill_array.push("Web Design") if self.web_design
    skill_array.push("Web Development") if self.web_development
    skill_array.push("iOS Development") if self.ios_development
    skill_array.push("Android Development") if self.android_development
    skill_array.push("Data Analysis") if self.data_analysis
    skill_array.push("Algorithm Design") if self.algorithm_design
    skill_array.push("Ruby on Rails") if self.ruby_on_rails
    skill_array.push("JavaScript") if self.python
    skill_array.push("Java") if self.java
    skill_array.push("C++") if self.cpp
    skill_array.push("C") if self.c
    skill_array
  end

end
