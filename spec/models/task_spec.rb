require "rails_helper"

describe Task do
    before do
        @task = Task.new(name: "example task", due_date: Time.now )
    end

    subject { @task }

    it { should respond_to(:name) }
    it { should respond_to(:due_date) }

    describe "should not save without name field" do
        before {@task.name = " " }
        it { should_not be_valid }
    end

    describe "should not save without duedate field" do
        before {@task.due_date = nil }
        it { should_not be_valid }
    end    

    describe "when name is already taken" do
        before do
            user_with_same_name = @task.dup
            user_with_same_name.name = @task.name.upcase
            user_with_same_name.save
        end
        it {should_not be_valid}
    end


end