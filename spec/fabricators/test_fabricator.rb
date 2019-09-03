Fabricator(:test) do
  date {Faker::Date.between(from: Date.today, to: 30.days.from_now)}
  type
end
