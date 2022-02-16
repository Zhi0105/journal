require "rails_helper"

describe "posting to register user" do
    
    scenario "valid register attribute" do
        post '/users/sign_up', params: { 
            user: {
                username: "sample",
                email: "example@email.com",
                password: "sample123",
                confirm_password: "sample123"
            }
        }
    
        expect(response.status).to eq(302)
    end
end

describe "posting to login user" do
    
    scenario "valid login attribute" do
        post '/users/sign_in', params: { 
            user: {
                email: "example@email.com",
                password: "sample123"
                
            }
        }
    
        expect(response.status).to eq(200)
    end
end

describe "posting to sign_out user" do
    
    scenario "valid logout attribute" do
        delete '/users/sign_out', params: { 
            user: {
                email: "example@email.com",
                password: "sample123"
                
            }
        }
    
        expect(response.status).to eq(302)
    end
end