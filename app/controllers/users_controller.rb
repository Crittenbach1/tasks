class UsersController < ApplicationController
  before_action :authenticate_user!

     def index
       @users = User.all
     end

     def most_tasks
       @users = User.all
     end


end
