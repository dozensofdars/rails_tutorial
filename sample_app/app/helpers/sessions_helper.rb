module SessionsHelper
  # 渡されたユーザーでログインする
  # @param user [User] ユーザー
  def log_in(user)
    session[:user_id] = user.id
  end
end
