module UsersHelper

  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    default_url = "http://i.imgur.com/4ZILQfw.png"
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=200&d=#{CGI::escape(default_url)}"
    image_tag(gravatar_url, alt: user.first_name, class: "gravatar")
  end

end
