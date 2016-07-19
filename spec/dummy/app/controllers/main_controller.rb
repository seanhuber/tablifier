class MainController < ApplicationController
  def index
    # @obj = {
    #   abc: 123,
    #   def: 'hij',
    #   klm: Time.now,
    #   string_to_escape: 'john & jane > "blah blah"'
    # }

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

    # @h = {
    #   id: 40011,
    #   email: "m_zygman@hotmail.com",
    #   encrypted_password: "$2a$10$sgNwZNFs58FvYbubOaqBCeVrfro5TAj.KQVe1QxPWzX2QmjLqwvLi",
    #   reset_password_token: nil,
    #   reset_password_sent_at: Time.now,
    #   remember_created_at: Time.now,
    #   sign_in_count: 7,
    #   current_sign_in_at: Time.now,
    #   last_sign_in_at: Time.now,
    #   current_sign_in_ip: "73.209.1.175",
    #   last_sign_in_ip: "73.209.1.175",
    #   created_at: Time.now,
    #   updated_at: Time.now,
    #   first_name: "Michele",
    #   is_candidate: false,
    #   stage_id: nil,
    #   last_name: "Zygman",
    #   maiden_name: "",
    #   home_phone: "",
    #   cell_phone: "3122188589",
    #   address1: "9312 Kildare Ave",
    #   address2: "",
    #   city: "Skokie",
    #   zip: "60076",
    #   encrypted_ssn: "YfwA0eIqRn/Oc7W/egZg4A==\n",
    #   state_id: 14,
    #   dob: Date.current,
    #   imported: false,
    #   emp_migrated: true,
    #   clock_id: "038667",
    #   company: "Select",
    #   psid: "H8Y",
    #   dept_id: "343",
    #   hire_date: Date.current,
    #   term_date: nil,
    #   title: "Therapist",
    #   category: "PRN",
    #   status: 1,
    #   dim_facility_id: 1640,
    #   encrypted_select_id: "CWXKsNKSUSU8Hb4KBAbgkw==\n",
    #   force_pw_reset: false,
    #   failed_attempts: 3,
    #   unlock_token: nil,
    #   locked_at: Time.now,
    #   activated: Time.now,
    #   ceridian_active: true,
    #   supervisor_clock_id: "017460",
    #   non_select_notes: nil,
    #   work_phone: nil,
    #   ns_title: nil,
    #   sid: "mz87809",
    #   company_code: "",
    #   password_changed_at: Time.now,
    #   password_salt: nil,
    #   hourly_rate: 50.0,
    #   discipline: "PT",
    #   first_worked_on: Time.now,
    #   hr_department_id: nil
    # }
    # puts '-----------------------'
    # puts Tablifier::Base.tablify(@obj).inspect
    # puts '-----------------------'
  end
end
