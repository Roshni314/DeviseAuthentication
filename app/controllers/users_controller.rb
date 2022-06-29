class UsersController < ApplicationController

    def index
        @search = User.ransack(params[:q])
        @users = @search.result
        @search.build_condition
        @users = User.page(params[:page]).per(3)
    end
end
