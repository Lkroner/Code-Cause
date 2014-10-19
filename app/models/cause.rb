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
end
