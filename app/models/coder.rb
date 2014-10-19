class Coder < User

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
