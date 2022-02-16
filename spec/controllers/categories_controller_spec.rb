require "rails_helper"

describe 'get index page' do
    it "goes to index page" do
        expect(get: '/categories').to route_to(controller: 'categories', action: 'index')
    end
end

describe 'get new page' do
    it "goes to new page" do
        expect(get: '/categories/new').to route_to(controller: 'categories', action: 'new')
    end
end

describe 'get show page' do
    it "goes to show page" do
        expect(get: '/categories/:id').to route_to(controller: 'categories', action: 'show', id: ":id")
    end
end

describe 'get edit page' do
    it "goes to edit page" do
        expect(get: '/categories/:id/edit').to route_to(controller: 'categories', action: 'edit', id: ":id")
    end
end

describe 'post for creating a category' do
    it "should create new category" do
        expect(post: '/categories').to route_to(controller: 'categories', action: 'create')
    end
end

describe 'patch for updating a category' do
    it "should update category" do
        expect(put: '/categories/:id').to route_to(controller: 'categories', action: 'update', id: ":id")
    end
end
