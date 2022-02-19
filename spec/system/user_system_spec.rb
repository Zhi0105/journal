require "rails_helper"


RSpec.describe "Users", type: :feature do
    # SIGN IN START
    describe 'Sign in' do
        before {visit new_user_session_path}
        it 'user' do
            within 'form' do
                fill_in 'email', with: 'sample@email.com'
                fill_in 'password', with: '123123'
                click_button 'submit'
            end
            expect(page).to have_current_path user_session_path
        end
    end
    # SIGN IN END

    #SIGN OUT START
    describe 'Sign in' do
        before {visit new_user_session_path}
        it 'user' do
            within 'form' do
                fill_in 'email', with: 'sample@email.com'
                fill_in 'password', with: '123123'
                click_button 'submit'
            end
            expect(page).to have_current_path user_session_path
        end
    end

    describe 'Sign out' do
        before {visit root_path}
        it 'user' do    
        expect(page).to have_current_path new_user_session_path
        end
    end
    #SIGN OUT END
    

end




# describe "posting to register user" do
    
#     scenario "valid register attribute" do
#         post '/users/sign_up', params: { 
#             user: {
#                 username: "sample",
#                 email: "example@email.com",
#                 password: "sample123",
#                 confirm_password: "sample123"
#             }
#         }
    
#         expect(response.status).to eq(302)
#     end
# end

# describe "posting to login user" do
    
#     scenario "valid login attribute" do
#         post '/users/sign_in', params: { 
#             user: {
#                 email: "example@email.com",
#                 password: "sample123"
                
#             }
#         }
    
#         expect(response.status).to eq(200)
#     end
# end

# describe "posting to sign_out user" do
    
#     scenario "valid logout attribute" do
#         delete '/users/sign_out', params: { 
#             user: {
#                 email: "example@email.com",
#                 password: "sample123"
                
#             }
#         }
    
#         expect(response.status).to eq(302)
#     end
# end