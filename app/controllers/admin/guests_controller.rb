class Admin::GuestsController < ApplicationController
  　before_action :check_guest, only: %i[update withdraw]
 def check_guest
   if @customer.email == 'guestcustomer@example.com'
     redirect_to root_path, notice: 'ゲストユーザーは編集できません。'
   end
 end

  def new_guest
    admin = Admin.find_or_create_by!(
      email: 'guest_admin@example.com') do |admin|
      admin.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
    sign_in admin
    redirect_to admin_top_path, notice: 'ゲストマスターとしてログインしました。'
  end
end
