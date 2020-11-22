class Url < BaseModel
  table do
    column full_url : String
    column slug : String
  end
end
