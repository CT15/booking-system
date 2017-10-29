class SessionsController < ApplicationController
    skip_before_action :check_logged_in

    def new #sign-in
      #no need to define model
    end

    def create
        full_name = params[:full_name]
        password = params[:password]

        user = User.find_by(full_name: full_name)
        
        if user.nil?
            #FAIL
            render :new
        elsif user.authenticate(password)
            #LOG IN
            session[:full_name] = full_name
            redirect_to users_path #index
        else
            render :new
        end
    end

    def delete #sign-out
        session.delete(:full_name)
        redirect_to users.path
    end
end
