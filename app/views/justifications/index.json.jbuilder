json.array!(@justifications) do |justification|
  json.extract! justification, :id, :justId, :repo, :branch, :approved
  json.url justification_url(justification, format: :json)
end
