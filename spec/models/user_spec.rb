require "rails_helper"
    describe User do

        before do
        @user = User.new(username: "Example User", email: "user@example.com",
                        password: "foobar", password_confirmation: "foobar")
        end

        subject { @user }

        it { should respond_to(:username) }
        it { should respond_to(:email) }
        it { should respond_to(:password) }
        it { should respond_to(:password_confirmation)}

        it { should be_valid }

    describe "when username is not present" do
        before { @user.username = " " }
        it { should_not be_valid}

        describe "when email is not present" do
            before { @user.email = " " }
            it { should_not be_valid}
        end

        describe "when email adress is already taken" do
            before do
                user_with_same_email = @user.dup
                user_with_same_email.email = @user.email.upcase
                user_with_same_email.save
            end
            it {should_not be_valid}
        end

        describe "when username is already taken" do
            before do
                user_with_same_username = @user.dup
                user_with_same_username.username = @user.username.upcase
                user_with_same_username.save
            end
            it {should_not be_valid}
        end
        
        describe "when password is not present" do
            before do
            @user = User.new(username: "Example User", email: "user@example.com",
                                password: " ", password_confirmation: " ")
            end
        it { should_not be_valid }
        end

        describe "with a password that's to short" do
            before { @user.password = @user.password_confirmation = "a" * 5 }
            it { should be_invalid }
        end

        describe "when password doesn't match confirmation" do
            before { @user.password_confirmation = "mismatch" }
            it { should_not be_valid }
        end

    end

    end