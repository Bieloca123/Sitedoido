json.extract! friendsdb, :id, :first_name, :last_name, :email, :phone, :instagram, :created_at, :updated_at
json.url friendsdb_url(friendsdb, format: :json)
