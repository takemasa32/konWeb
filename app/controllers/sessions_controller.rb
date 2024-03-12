class SessionsController < ApplicationController
    before_action :require_login, only: [:destroy]

    def new
    end

    def create
        user = User.find_by(email: params[:email].downcase)
        if user && user.authenticate(params[:password])
            session[:failed_login_attempts] = 0 # ログイン成功時にカウンターをリセット
            log_in(user)
            redirect_to profile_path
        else
            flash.now[:alert] = 'メールアドレスまたはパスワードが間違っています'
            render 'new'
        end
    end

    def destroy
        log_out if logged_in?
        redirect_to root_url
    end
end
