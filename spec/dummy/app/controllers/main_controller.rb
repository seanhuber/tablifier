class MainController < ApplicationController
  def index
    User.destroy_all
    @user = User.create!(
      email_address: 'my_email_234234@gmail.com',
      encrypted_password: '2q9292byf3phnpc298n',
      sign_in_count: '14',
      created_at: Time.now - 57.days - 98734.minutes,
      updated_at: Time.now - 34.days - 23423.minutes,
      first_name: 'Jane',
      last_name: 'Doe',
      middle_name: nil,
      birth_date: Date.current - 33.years - 22.days,
      registered: true,
      admin: false
    )

    @h = {
      integer: 345,
      float: 3.14,
      date: Date.current + 18.days,
      datetime: Time.now - 235352324.minutes,
      true_boolean: true,
      false_boolean: false,
      string: 'This is a string!',
      nil: nil,
      symbol: :my_symbol,
      encrypted_attribute: 'fwoifje;aoiwjfe'
    }
  end
end
