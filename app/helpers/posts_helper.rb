module PostsHelper
  def commenter(user)
    return "-" unless user

    user.email
  end
end
