class RelationshipsController < ApplicationController
#   def create
#     book = Book.find(params[:book_id])
#     relationship = current_user.relationships.new(book_id: book.id)
#     relationship.save
#     redirect_to request.referer
#   end

# def destroy
#     book = Book.find(params[:book_id])
#     relationship = current_user.relationships.find_by(book_id: book.id)
#     relationship.destroy
#     redirect_to request.referer
# end


 # フォローするとき
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end
  # フォロー外すとき
  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end
  # フォロー一覧
  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end
  # フォロワー一覧
  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end


end
