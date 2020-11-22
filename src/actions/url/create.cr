class Url::Create < BrowserAction
  include Auth::AllowGuests

  route do
    #pp params.from_form_data["url:full_url"]
    redirect to: Home::Index
  end
end
