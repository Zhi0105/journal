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



# RSpec.describe "Category", type: :feature do



    # describe 'Sign in' do
    #     before {visit new_user_session_path}
    #     it 'user' do
    #         within 'form' do
    #             fill_in 'email', with: 'sample@email.com'
    #             fill_in 'password', with: '123123'
    #             click_button 'submit'
    #         end
    #         expect(page).to have_current_path user_session_path
    #     end
    # end
    
    #     describe 'View all Categories' do
    #         before { visit root_path }
        
    #         it 'shows all categories in categories page' do
    #                 expect(page).to have_content categories_path
    #         end
    #     end



    # describe 'post category' do
    #     before {visit categories_path}
    #     it 'create a category' do
    #         expect(page).to have_current_path new_category_path
    #         within 'form' do
    #             fill_in 'name', with: 'sample'
    #             click_button 'submit'
    #         end
    #         expect(page).to have_current_path categories_path
    #     end
    # end


    
    # describe 'visit category page' do
    #     before {visit root_path }
    #     it 'should transfer to category path' do
    #         expect(page).to have_current_path categories_path
    #     end
    # end

    
# end




