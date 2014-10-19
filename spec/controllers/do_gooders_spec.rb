require 'rails_helper'
describe DoGoodersController do

  before :each do
    DoGooder.destroy_all
  end

    xit "responds successfully with an HTTP 200 status code for showing an coder" do
    	do_gooder = DoGooder.create(name: "Example", email: "Example@example.com", about: "hi")
      get :show, id: DoGooder.id
      expect(response).to be_success
    end
    xit "successfully updates a do-gooder profile" do
    	do_gooder = DoGooder.create(name: "Example", email: "Example@example.com", about: "hi")
    	expect {
    		DoGooder.update_attributes(name: 'meep')
    	}.to change {DoGooder.name}
    end
end
