json.extract! course, :course_id, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
