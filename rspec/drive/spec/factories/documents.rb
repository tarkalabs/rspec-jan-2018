FactoryBot.define do
  factory :document do
  	folder 
  	name Faker::Name.name
  	document_type Faker::Name.name
  	size Faker::Number.between(1, 100)
  end

  factory :invalid_document, class: Document do
  	folder 
  	name "thj.      "
  	document_type Faker::Name.name
  	size Faker::Number.between(1, 100)
  end

end
