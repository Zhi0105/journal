require "rails_helper"


describe 'create a task', type: :feature do
    before :each do
        Category.task.create(
            name: 'sample',
            due_date: Time.now
        )
    end
    
    it 'post a task' do
        visit '/categories/:category_id/tasks'
        fill_in 'name', with: 'example'
        fill_in 'due_date', with: Time.now
        fill_in 'category_id', with: ':category_id'
        click_button 'Submit'

        expect('/categories/:category_id/tasks').to eq('/categories')
    end

end

# describe "post task" do
    
#     scenario "valid task attribute" do
#         post '/categories/:category_id/tasks', params: { 
#             task: {
#                 name: "sample",
#                 category_id: ":category_id"
#             }
#         }
    
#         expect(response.status).to eq(302)
#     end
# end


