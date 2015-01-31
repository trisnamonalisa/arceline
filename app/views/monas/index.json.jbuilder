json.array!(@monas) do |mona|
  json.extract! mona, :id
  json.url mona_url(mona, format: :json)
end
