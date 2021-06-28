FactoryBot.define do
  factory :pokemon, aliases: [:charmander], class: Pokemon do
    name { "charmander" }
    base_experience { 62 }
  end
  
  factory :dragonite, class: Pokemon do
    name { "dragonite" }
    base_experience { 270 }
  end

  factory :mewtwo, class: Pokemon do
    name { "mewtwo" }
    base_experience { 306 }
  end


  factory :mew, class: Pokemon do
    name { "mew" }
    base_experience { 270 }
  end
  
  factory :tentacruel, class: Pokemon do
    name { "tentacruel" }
    base_experience { 180 }
  end
end
