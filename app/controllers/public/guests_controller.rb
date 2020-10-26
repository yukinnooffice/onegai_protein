class Public::GuestsController < ApplicationController

  def new_guest
    customer = Customer.find_or_create_by!(
      first_name: "ゲスト",
      last_name: "ユーザー",
      first_name_kana: "ゲスト",
      last_name_kana: "ユーザー",
      postal_code: "7777777",
      address: "大阪府大阪市中央区1-1-1-1-1",
      telephone_number: "00099997777",
      is_active: true,
      email: 'guestcustomer@example.com') do |customer|
      customer.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
    sign_in customer
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
