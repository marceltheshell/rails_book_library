class UsersController < Clearance::UsersController
  
  def show
    @checked_out_book_items = CheckoutRecord.joins(:user).where("email LIKE '%#{current_user.email}%'")
  end

  def delete
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
