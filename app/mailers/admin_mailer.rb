class AdminMailer < ActionMailer::Base
  default from: "no-reply@casasmap.com"
  default to: "ramihertz@gmail.com"
  def mandrill_client
    @mandrill_client ||= Mandrill::API.new MANDRILL_API_KEY
  end
  def new_user(user)
    @user = user
    mail(subject: "new user #{user.email}")
  end
  def new_notebook(notebook)
    template_name = "new-notebook"
    template_content = []
    message = {
        to: [{email: "ramihertz@gmail.com"}],
        subject: "New Notebook: #{notebook.title}",
        merge_vars: [
            {rcpt: "ramihertz@gmail.com",
             vars: [
                 {name: "NOTEBOOK_TITLE", content: notebook.title},
                 {name: "NOTEBOOK_IMAGE", content: notebook.cover},
                 {name: "NOTEBOOK_CONTENT", content: notebook.description}
             ]

            }
    ]

    }
    mandrill_client.messages.send_template template_name, template_content, message
  end
end
