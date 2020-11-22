class SaveUrl < Url::SaveOperation
  permit_columns full_url

  before_save generate_slug

  def generate_slug
    slug.value = Random::Secure.urlsafe_base64(4, padding: false)
  end
end
