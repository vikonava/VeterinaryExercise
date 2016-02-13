json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :pet_id, :date, :requires_reminder, :reason_for_visit
  json.url appointment_url(appointment, format: :json)
end
