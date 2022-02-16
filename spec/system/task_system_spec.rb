require "rails_helper"

describe "post task" do
    
    scenario "valid task attribute" do
        post '/categories/:category_id/tasks', params: { 
            task: {
                name: "sample",
                category_id: ":category_id"
            }
        }
    
        expect(response.status).to eq(302)
    end
end