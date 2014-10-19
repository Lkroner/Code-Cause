require 'rails_helper'
describe CoderController do

  before :each do
    Coder.destroy_all
  end

    xit "responds successfully with an HTTP 200 status code for showing an coder" do
    	coder = Coder.create(name: "Example", email: "Example@example.com", about: "hi")
      get :show, id: Coder.id
      expect(response).to be_success
    end
    xit "successfully updates a coder profile" do
    	coder = Coder.create(name: "Example", email: "Example@example.com", about: "hi")
    	expect {
    		Coder.update_attributes(name: 'meep')
    	}.to change {Coder.name}
    end
end