module SessionsHelper
  # 渡されたユーザーでログインする
  # @param user [User] ユーザー
  def log_in(user)
    session[:user_id] = user.id
  end

  # ユーザーのセッションを永続的にする
  # @param user [User] ユーザー
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # ユーザーの永続セッションを破棄する
  # @param user [User] ユーザー
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # 現在のユーザーをログアウトする
  def log_out
    forget current_user
    session.delete(:user_id)
    @current_user = nil
  end

  # @return [User] ログイン中のユーザー
  # @return [NilClass] 未ログイン
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  # @param user [User] ユーザー
  # @return [Boolean] 渡されたユーザーがログイン済みユーザーであればtrueを返す
  def current_user?(user)
    user == current_user
  end

  def logged_in?
    !current_user.nil?
  end
end
