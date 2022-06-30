class UsersController < ApplicationController

    def index
        @search = User.ransack(params[:q])
        @users = @search.result.page(params[:page]).per(3)
    end
end
