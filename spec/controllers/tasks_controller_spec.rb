require "rails_helper"

describe 'get new page' do
    it "goes to new page" do
        expect(get: '/categories/:category_id/tasks/new').to route_to(controller: 'tasks', action: 'new', category_id: ":category_id")
    end
end

describe 'get show page' do
    it "goes to show page" do
        expect(get: '/categories/:category_id/tasks/:id').to route_to(controller: 'tasks', action: 'show', category_id: ":category_id", id: ":id")
    end
end

describe 'get edit page' do
    it "goes to edit page" do
        expect(get: '/categories/:category_id/tasks/:id/edit').to route_to(controller: 'tasks', action: 'edit', category_id: ":category_id", id: ":id")
    end
end


describe 'post for creating a task' do
    it "should create new task" do
        expect(post: '/categories/:category_id/tasks').to route_to(controller: 'tasks', action: 'create', category_id: ":category_id")
    end
end

describe 'patch for updating a task' do
    it "should update task" do
        expect(put: '/categories/:category_id/tasks/:id').to route_to(controller: 'tasks', action: 'update', category_id: ":category_id", id: ":id")
    end
end

describe 'delete for destroying a task' do
    it "should destroy task" do
        expect(delete: '/categories/:category_id/tasks/:id').to route_to(controller: 'tasks', action: 'destroy', category_id: ":category_id", id: ":id")
    end
end



