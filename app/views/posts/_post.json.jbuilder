json.extract! post, :id, :title, :details, :created_at, :updated_at
json.url post_url(post, format: :json)
