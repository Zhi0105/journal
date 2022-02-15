class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
      @id = current_user.id
      @tasklist = Task.find_by_sql(
        " select categories.name as category_name, tasks.name as task, tasks.due_date as due
        from tasks left join categories on categories.id = tasks.category_id
        left join users on users.id = categories.user_id
        where categories.user_id = #{@id}
        order by categories.id
      ")
      
  end

end
