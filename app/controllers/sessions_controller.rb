class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
        redirect_to '/sessions/new'
    else
        session[:name] = params[:name]
    end
  end


  def destroy
    session.delete :name
  end
end
