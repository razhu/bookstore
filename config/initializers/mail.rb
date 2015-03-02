MANDRILL_API_KEY = "YiTz5Sy0lEibsnO4LTYwgQ"
ActionMailer::Base.smtp_settings = {
    address: "smtp.mandrillapp.com",
    port: 587,
    enable_starttls_auto: true,
    user_name: "ramihertz@gmail.com",
    password: MANDRILL_API_KEY,
    authentication: "login"
}
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"
