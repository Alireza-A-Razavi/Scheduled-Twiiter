class PasswordResetsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(email: params[:email])
        
        if @user.present?
            # send email 
            PasswordMailer.with(user: @user).reset.deliver_now
        end

        redirect_to root_path, notice: "If a account with that email was found, we've sent a password reset link to it"
    end
end
