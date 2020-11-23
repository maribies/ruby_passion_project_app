require "scraping/chanel/chanel_products"

desc "Get and create data from designer sites."

namespace :scraping do
  task :run, [:arg_1] => [] do |task, args|
    argument_1 = args.arg_1
    puts "Getting document for #{argument_1}"

     ChanelProducts.get_all_products_info if argument_1 == "chanel" || argument_1 == "Chanel"

    puts "Done"
  end
end
 