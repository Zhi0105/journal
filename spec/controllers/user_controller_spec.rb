require "rails_helper"


describe 'get register page' do
    it "goes to register page" do
        expect(get: '/users/sign_up').to route_to(controller: 'devise/registrations', action: 'new')
    end
end

describe 'get login page' do
    it "goes to login page" do
        expect(get: '/users/sign_in').to route_to(controller: 'devise/sessions', action: 'new')
    end
end
