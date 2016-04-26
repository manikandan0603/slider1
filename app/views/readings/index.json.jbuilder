json.array!(@readings) do |reading|
  json.extract! reading, :id, :user_id, :main_slider_values, :s1, :s2, :s3, :s4, :s5, :s6, :s7, :s8, :s9, :s10
  json.url reading_url(reading, format: :json)
end
