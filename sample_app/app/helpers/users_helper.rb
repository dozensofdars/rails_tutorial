module UsersHelper
  # @param user [User] ユーザ
  # @param size [Integer] 画像サイズ
  # @return [String] ユーザのGravatar画像のimage_tag
  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
