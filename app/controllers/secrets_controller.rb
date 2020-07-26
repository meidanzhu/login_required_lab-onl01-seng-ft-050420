class SecretsController < ApplicationController

  before_action :require_login


    def show
    redirect_to '/login'
    end

    private

    def require_login
        return redirect_to '/sessions/new' unless session.include? :user_id
    end

end
