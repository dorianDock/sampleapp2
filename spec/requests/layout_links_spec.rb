require 'rails_helper'

RSpec.describe "LayoutLinks", type: :request do
  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      get '/home'
      expect(response).to have_http_status(200)
    end


	it "devrait trouver une page Accueil à '/'" do
	    get '/'
	    expect(response).to have_http_status(200)
	    
	end

	it "devrait trouver une page Contact at '/contact'" do
	    get '/contact'
	    expect(response).to have_http_status(200)
	end

	it "should have an À Propos page at '/about'" do
	    get '/about'
	    expect(response).to have_http_status(200)
	end

	it "devrait trouver une page Iade à '/help'" do
	    get '/help'
	    expect(response).to have_http_status(200)
	end
  end
end

