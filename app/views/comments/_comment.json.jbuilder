json.extract! comment, :id, :author_id, :author_name, :comment_body, :created_at, :updated_at
json.url comment_url(comment, format: :json)
