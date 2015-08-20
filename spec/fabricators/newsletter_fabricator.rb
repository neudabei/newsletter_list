Fabricator(:newsletter) do
  name { Faker::Lorem.words(5).join(" ") }
  description { Faker::Lorem.paragraph(5) }
  website_url { Faker::Internet.url }
end