# This is the welcome page shown to users when they first initialize a new Lucky project
class Home::WelcomePage < MainLayout
  needs op : SaveUrl
  needs url_shortened : Url?

  def content
    render_url_shortener_flash(url_shortened)

    form_for Url::Create  do
      label_for(op.full_url) do
        strong("URL to be shortened: ")
      end
      url_input(op.full_url, attrs: [:required])
      submit("A-B-C -> SHORT IT!")
    end
  end

  private def render_url_shortener_flash(url_shortened : Url)
    mount Shared::Url::LinkToSlug, url_shortened
  end

  private def render_url_shortener_flash(url_shortened : Nil)
    text "Enter the URL to short it!"
  end

  private def error_for(field)
    mount Shared::FieldErrors, field
  end
end
