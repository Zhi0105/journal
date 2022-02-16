require "rails_helper"

describe "post category" do
    
    scenario "valid category attribute" do
        post '/categories', params: { 
            category: {
                name: "sample"
            }
        }
    
        expect(response.status).to eq(302)
    end
end

describe "put category" do
    
    scenario "valid category attribute" do
        put '/categories/:id', params: { 
            category: {
                name: "sample",
                id: ':id'
            }
        }
    
        expect(response.status).to eq(302)
    end
end
