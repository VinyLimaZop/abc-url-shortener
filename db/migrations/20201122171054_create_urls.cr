class CreateUrls::V20201122171054 < Avram::Migrator::Migration::V1
  def migrate
    create table_for(Url) do
      primary_key id : Int64
      add_belongs_to user : User?, on_delete: :cascade
      add_timestamps
      add full_url : String
      add slug : String
    end
  end

  def rollback
    drop table_for(Url)
  end
end
