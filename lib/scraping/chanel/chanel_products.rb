require "scraping/get_html"

class ChanelProducts
  def self.get_products(page=1)
    url = "https://www.chanel.com/us/fashion/handbags/c/1x1x1/?requestType=ajax&page=#{page}&totalElementsCount=24"

    doc = GetHtml.run(url)

    return doc

    puts "Document returned"
  end

  def self.get_products_ids(data)
    results_object = data.search('p').xpath('text()').map(&:text)

    puts results_object.keys

    return
  end

  def self.get_products_info(pages)
    all_products = []

    pages.times do |page|
      products_data = get_products(page)
      products_ids = get_products_ids(products_data)

      puts "loop"
    end

    return all_products
  end

  def self.get_all_products_info()
    return get_products_info(1)
  end
end
