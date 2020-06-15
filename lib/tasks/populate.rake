namespace :db do
    desc "Erase db and fill database"
        task :populate => :environment do
    require 'faker' 

    Rake::Task['db:reset'].invoke

    20.times do 
        Product.create do |product|
            product.title = Faker::Food.dish
            product.image = Faker::LoremPixel.image
            product.description = Faker::Lorem.paragraph
        end
    end
end
end

