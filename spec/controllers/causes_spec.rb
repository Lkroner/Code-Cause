require 'rails_helper'
describe CausesController do

  before :each do
    Cause.destroy_all
  end

    xit "successfully creates a new cause" do
      expect {
        post :create, name: "hi", description: "hi", help_needed: "hi"
      }.to change { Cause.count }
    end
    xit "responds successfully with an HTTP 200 status code for showing an cause" do
      cause = Cause.create(name: "hi", description: "hi", help_needed: "hi")
      get :show, id: Cause.id
      expect(response).to be_success
    end
    xit "successfully updates an cause" do
      cause = Cause.create(name: "hi", description: "hi", help_needed: "hi")
    	expect {
    		Cause.update_attributes(name: 'meep')
    	}.to change {Cause.name}
    end
    xit "successfully destroys a cause" do
      expect {
        post :destroy, name: "hi", description: "hi", help_needed: "hi"
      }.to change { Cause.count }
    end
end