def greetings(name_array, job_hash)
  "Hello #{name_array.join(' ')}! " \
  "Nice to have a #{job_hash[:title]} #{job_hash[:occupation]} around."
end