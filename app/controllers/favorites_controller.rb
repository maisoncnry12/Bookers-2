class FavoritesController < ApplicationController
    
    before_action :authenticate_user!

 # def create
 #    @book = Book.find(params[:book_id])
 #    @favorite = current_user.favorites.new(book_id: @book.id)
 #    @favorite.save
 #    redirect_back(fallback_location: root_path)
 # end
 
 # def destroy
 #    @book = Book.find(params[:book_id])
 #    @favorite = current_user.favorites.find_by(book_id: @book.id)
 #    @favorite.destroy
 #    redirect_back(fallback_location: root_path)
 # end
  
  def create
    @book = Book.find(params[:book_id])
    favorite = @book.favorites.new(user_id: current_user.id)
    favorite.save
  end

  def destroy
    @book = Book.find(params[:book_id])
    favorite = @book.favorites.find_by(user_id: current_user.id)
    favorite.destroy
  end
  
end
