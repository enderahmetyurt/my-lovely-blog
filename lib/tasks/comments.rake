namespace :comments do
  task update: :environment do
    comments = Comment.where(commenter: nil)

    comments.each do |comment|
      comment.update(commenter: comment.user.email)
    end
  end

  task delete: :environment do
    comments = Comment.where("commenter ILIKE ?", "%ender%")
    if comments.any?
      comments.destroy_all
      puts "Removed all comments, ender"
    else
      puts "No comments found"
    end
  end
end
