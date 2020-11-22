# This is the welcome page shown to users when they first initialize a new Lucky project
class Home::WelcomePage < MainLayout
  needs op : SaveUrl

  def content
    form_for Url::Create  do
      label_for(op.full_url) do
        strong("URL to be shortened: ")
      end
      url_input(op.full_url, attrs: [:required])
      submit("A-B-C -> SHORT IT!")
    end
  end

  private def error_for(field)
    mount Shared::FieldErrors, field
  end
end
