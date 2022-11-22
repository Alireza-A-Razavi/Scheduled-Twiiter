class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        # print "this is user authenticity status **** \t " + user.authenticate(params[:password]) + "\n"
        print "this is request user provided password **** \t " + params[:password] + "\n"
        if user.authenticate(params[:passowrd])
            print "User has provided valid passowrd"
        end
        if user.present? && user.authenticate(params[:passowrd])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in successfully"
        else
            flash[:alert] = "Invalid email or passowrd"
            render :new, status: :uprocessable_entity # renders session/new.html.erb 
        end
    end

    def destroy
        session[:user_id] = nil 
        redirect_to root_path, notice: "Logged out"
    end
end