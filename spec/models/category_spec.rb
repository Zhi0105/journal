require "rails_helper"

describe Category do
    before do
        @category = Category.new( name: "example category")
    end
    
    subject { @category }

    it { should respond_to(:name) }

    describe "should not save without name field" do
        before {@category.name = " " }
        it { should_not be_valid }
    end

    describe "when name is already taken" do
        before do
            user_with_same_name = @category.dup
            user_with_same_name.name = @category.name.upcase
            user_with_same_name.save
        end
        it {should_not be_valid}
    end

end