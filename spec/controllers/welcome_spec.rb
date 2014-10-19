require 'rails_helper'
describe WelcomeController do

  before :each do
    Cause.destroy_all
  end

    xit "successfully creates a new user" do
      expect {
        post :create, name: "Example", email: "Example@example.com", about: "I make code."
      }.to change { User.count }
    end
    xit "responds successfully with an HTTP 200 status code for redirect to coder search page" do
    end
    xit "responds successfully with an HTTP 200 status code for redirect do_gooder dashboard" do
    end

end