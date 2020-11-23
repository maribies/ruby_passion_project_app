require "scraping/get_html"

desc "Get HTML data for parsing."

namespace :scraping do
  task :run, [:arg_1] => [] do |task, args|
    argument_1 = args.arg_1
    puts "Getting document for #{argument_1}"

    url = 'https://www.chanel.com/us/fashion/handbags/c/1x1x1/?requestType=ajax&page=1&totalElementsCount=24' if argument_1 == "chanel" || argument_1 == "Chanel"
    
    doc = GetHtml.run(url)

    puts "Document returned"

    return doc
  end
end
