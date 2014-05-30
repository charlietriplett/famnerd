json.array!(@entries) do |entry|
  json.extract! entry, :id, :recorded_at, :temperature, :disturbed, :intercourse, :protected, :cervix_firmness, :cervix_height, :cirvix_openness, :flow_type, :flow_volume, :ferning, :opk, :pregancy_test, :ovulatory_pain, :breast_tenderness, :breast_fullness, :alcohol, :cramps, :exercise, :travel, :ibuprofen, :tylenol, :multivitamin, :notes
  json.url entry_url(entry, format: :json)
end
