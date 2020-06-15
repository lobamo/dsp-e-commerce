namespace :db do
    desc "Erase db and fill database"
        task :populate => :environment do
    require 'faker' 

    Rake::Task['db:reset'].invoke

    20.times do 
        Articles.create do |article|
            articles.title = Faker::Food.vegetables
            articles.image = Faker::LoremFlickr.image(size: "50x60", search_terms: ['vegetables'])
            article.body = Faker::Lorem.paragraph
        end
    end
end
end

