Fabricator(:chapter) do
  name  {Faker::Company.name}
  state {Faker::Address.state}
end
