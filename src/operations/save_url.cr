class SaveUrl < Url::SaveOperation
  permit_columns full_url, slug
end
