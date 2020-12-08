module OauthHelper
  def auth_provider(*names)
    names.each do |name|
      concat(link_to(image_tag("icons/#{name}_32.png"),
        main_app.user_omniauth_authorize_path(name),
        :id => "sign_in_with_#{name}"))
    end
    nil
  end
end